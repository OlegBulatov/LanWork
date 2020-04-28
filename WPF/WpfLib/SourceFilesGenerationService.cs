using System;
using System.Collections.Generic;
using System.Collections;
using System.IO;
using System.Linq;
using Microsoft.Office.Interop.Excel;
using Newtonsoft.Json;
using System.Text.RegularExpressions;

namespace WpfLib
{
    public class SourceFilesGenerationService 
    {

        private readonly List<string> serviceFieldNames = new List<string>()
        {
            "#Вкладка",
            "#Раздел в панели навигации:",
            "#Кнопки",
            "#Фильтры",
            "#Группа 1",
            "#Группа 2",
            "#Группа 3",
            "#Заголовок",
            "#Данные",
            "#НомерКолонки",
            "#Формат",
            "#Поле",
            "#Объект",
            "#Суммарная информация:",
            "#Легенда:"
        };

        /// <summary>
        /// Класс координат ячейки
        /// </summary>
        private class Coordinate
        {
            /// <summary>
            /// Инициализирует новый экземпляр класса <see cref="Coordinate"/>
            /// </summary>
            /// <param name="rowNum">Номер строки</param>
            /// <param name="colNum">Номер колонки (столбца)</param>
            public Coordinate(int rowNum, int colNum)
            {
                RowNum = rowNum;
                ColNum = colNum;
            }

            /// <summary>
            /// Получает или задает номер строки
            /// </summary>
            public int RowNum { get; set; }

            /// <summary>
            /// Получает или задает номер столбца (колонки)
            /// </summary>
            public int ColNum { get; set; }
        }
        public System.Data.DataTable GenerateTable(string exelPath)
        {
            
                System.Data.DataTable dt = new System.Data.DataTable();
                dt.Clear();

                Application app = new Application();
                Workbook workbook = app.Workbooks.Open(exelPath);
                Worksheet worksheet = workbook.Sheets[1];
                Range range = worksheet.get_Range("A1:ZZ500");

            object[,] data = range.Value2;

            int cCnt = range.Columns.Count;
            int rCnt = range.Rows.Count;

            int row;
            int col;

            for (col = 1; col <= cCnt; col++)
            {
                if (data[1, col] == null)
                {
                    cCnt = col;
                    break;
                }
                dt.Columns.Add(data[1, col].ToString(), typeof(string));
            }
            for (row = 3; row <= rCnt; row++)
            {
                dt.Rows.Add();
                bool nullRow = true;
                for (col = 1; col < cCnt; col++)
                {
                    if (data[row, col] != null)
                        nullRow = false;
                    dt.Rows[row - 3][col - 1] = data[row, col];
                }
                if (nullRow)
                    break;
            }
            app.Quit();
                return dt;
            }

        public List<GeneratedFieldEntity> GenerateFieldsFromDFM(string dfmPath)
        {
            List<GeneratedFieldEntity> fieldsList = new List<GeneratedFieldEntity>();
            FileStream FS = File.OpenRead(dfmPath);
            byte[] _buffer = new byte[FS.Length];
            try
            {
                FS.Read(_buffer, 0, _buffer.Length);
            }
            finally
            {
                FS.Flush();
                FS.Close();
            }
            string fileContent = System.Text.Encoding.Default.GetString(_buffer).Replace("-", "_");
            Regex rExp = new Regex("(item)");
            string[] itemArray = rExp.Split(fileContent);
            int col = 1;
            for(int i = 0; i < itemArray.Length; i++)
            {
                GeneratedFieldEntity fe = null;
                if (itemArray[i].Contains("item") || itemArray[i].Contains(".HeadersLines"))
                    continue;
                Regex reFieldName = new Regex(".*FieldName.*\n"); 
                Match M = reFieldName.Match(itemArray[i]);
                if(M.Value != "")
                {
                    fe = new GeneratedFieldEntity();
                    fe.Position = col++;
                    string fieldName = M.Value.Split('=')[1].Trim().Replace("'", "");
                    fe.Name = fieldName;
                    fe.PropertyName = fieldName;
                    string fieldHeader = "";
                    Regex reHeader = new Regex(".*Title.Caption.*\n");
                    M = reHeader.Match(itemArray[i]);
                    if(!string.IsNullOrEmpty(M.Value))
                        fieldHeader = M.Value.Split('=')[1].Trim().Replace("'", "");
                    fe.Header = fieldHeader;
                    Regex reWidth = new Regex(".*Width.*\n");
                    M = reWidth.Match(itemArray[i]);
                    if (!string.IsNullOrEmpty(M.Value))
                        fe.Width = int.Parse(M.Value.Split('=')[1].Trim());
                    fe.IsVisible = true;
                    Regex reVisible = new Regex(".*Visible.*\n");
                    M = reVisible.Match(itemArray[i]);
                    if (!string.IsNullOrEmpty(M.Value))
                    {
                        try
                        {
                            fe.IsVisible = bool.Parse(M.Value.Split('=')[1].Trim());
                        }
                        catch { }
                    }
                }
                if (fe != null && fe.IsVisible)
                    fieldsList.Add(fe);
            }
            Hashtable HT = new Hashtable();
            Regex reHeaderLine = new Regex("(FirstCol).*\n.*(LastCol).*\n.*(Caption).*\n");
            MatchCollection Matches = reHeaderLine.Matches(fileContent);
            foreach(Match M in Matches)
            {
                Regex reMinCol = new Regex("(FirstCol).*\n");
                Match mtMinCol = reMinCol.Match(M.Value);
                int minCol = int.Parse(mtMinCol.Value.Split('=')[1].Trim());
                Regex reMaxCol = new Regex("(LastCol).*\n");
                Match mtMaxCol = reMaxCol.Match(M.Value);
                int maxCol = int.Parse(mtMaxCol.Value.Split('=')[1].Trim());
                Regex reCaption = new Regex("(Caption).*\n");
                Match mtCaption = reCaption.Match(M.Value);
                string bandCaption = mtCaption.Value.Split('=')[1].Trim().Replace("'", "");
                for (int i = 1; i <= col; i++)
                {
                    if (i >= minCol+1 && i <= maxCol+1)//min & max - from 0
                    {
                        object Prefix_i = HT[i];
                        if (Prefix_i == null)
                            Prefix_i = "";
                        Prefix_i += bandCaption;
                        HT[i] = Prefix_i + " - ";
                    }
                }
            }
            foreach(GeneratedFieldEntity e in fieldsList)
            {
                object fieldPrefix = HT[e.Position];
                if (fieldPrefix == null)
                    fieldPrefix = " - ";
                e.Header = fieldPrefix.ToString() + e.Header;
            }
            return fieldsList;
        }

        public List<GeneratedFieldEntity> GenerateFields(string exelPath)
        {

            List<GeneratedFieldEntity> fieldsList = new List<GeneratedFieldEntity>();

            Application app = new Application();
            Workbook workbook = app.Workbooks.Open(exelPath);
            Worksheet worksheet = workbook.Sheets[1];
            Range range = worksheet.get_Range("A1:ZZ12");

            object[,] data = range.Value2;

            int cCnt = range.Columns.Count;
            int rCnt = range.Rows.Count;

            int row;
            int col;

            for (col = 1; col <= cCnt; col++)
            {
                if (data[1, col] == null)
                {
                    break;
                }
                GeneratedFieldEntity entity = new GeneratedFieldEntity()
                {
                    Id = col,
                    Header = data[2, col].ToString(),
                    Name = data[1, col].ToString(),
                    PropertyName = data[1, col].ToString(),
                    Position = col,
                    IsVisible = true
                };
                fieldsList.Add(entity);
            }
            app.Quit();

            return fieldsList;
        }
        /// <summary>
        /// Получить поля генерируемой сущности из файла Excel
        /// </summary>
        /// <param name="owner">Владелец схемы</param>
        /// <param name="tableName">Фильтр</param>
        /// <param name="excelFilePath">Путь к файлу шаблона</param>       
        /// <returns>Поля генерируемой сущности</returns>
        public IEnumerable<GeneratedFieldEntity> GetGeneratedFieldExcelEntities(string owner, string tableName, string excelFilePath)
        {
            Microsoft.Office.Interop.Excel.Application excel = new Microsoft.Office.Interop.Excel.Application
            {
                Visible = false
            };
            Workbook wb = null;

            if (!File.Exists(excelFilePath))
            {
                throw new Exception($"Файл {excelFilePath} не найден!");
            }

            try
            {
                wb = excel.Workbooks.Open(excelFilePath, ReadOnly: true);
            }
            catch (System.Exception ex)
            {
                throw new Exception("Не удалось найти MS Excel! \n" + ex.Message);
            }

            Worksheet ws = wb.Worksheets.get_Item("Представление") as Worksheet;

            Range globalRange = ws.get_Range("A1:Z100");
            Range findedRange = null;

            Dictionary<string, Coordinate> servicesFieldsWithRowNums = new Dictionary<string, Coordinate>();

            // Ищем позиции ключевых значений и заполняем словарь
            foreach (var item in serviceFieldNames)
            {
                findedRange = globalRange.Find(What: item, LookAt: XlLookAt.xlWhole);

                if (findedRange != null)
                {
                    servicesFieldsWithRowNums[item] = new Coordinate(findedRange.Row, findedRange.Column);
                }
            }

            // Обязательные значения
            int headerRowIndex;
            int dbFieldRowIndex;
            int dataFormatRowIndex;
            int viewNameRowIndex;
            int dataRowIndex;
            int colNumRowIndex;

            try
            {
                headerRowIndex = servicesFieldsWithRowNums["#Заголовок"].RowNum;
                dbFieldRowIndex = servicesFieldsWithRowNums["#Поле"].RowNum;
                //dataFormatRowIndex = servicesFieldsWithRowNums["#Формат"].RowNum;
                //viewNameRowIndex = servicesFieldsWithRowNums["#Объект"].RowNum;
                dataRowIndex = servicesFieldsWithRowNums["#Данные"].RowNum;
                colNumRowIndex = servicesFieldsWithRowNums["#НомерКолонки"].RowNum;
            }
            catch
            {
                throw new Exception("В файле не найдены ключевые поля для построения сущностей");
            }

            // Необязательные вспомогательные значения
            int rowGroup1Index = servicesFieldsWithRowNums.ContainsKey("#Группа 1") ? (servicesFieldsWithRowNums["#Группа 1"]?.RowNum ?? 0) : 0;
            int rowGroup2Index = servicesFieldsWithRowNums.ContainsKey("#Группа 2") ? (servicesFieldsWithRowNums["#Группа 1"]?.RowNum ?? 0) : 0;

            // Индекс по колонкам (Считаем, что значения в разных строках, но в одинаковых колонках соотносятся друг с другом (Заголовок, Поле, Формат))
            int colIndex = (servicesFieldsWithRowNums["#Заголовок"]?.ColNum ?? 0) + 1;

            // Массив возвращаемых сущностей
            List<GeneratedFieldEntity> entities = new List<GeneratedFieldEntity>();

            // Номер по порядку
            int position = 1;
            string groupName;

            while ((ws.Cells[headerRowIndex, colIndex] as Range)?.Value != null || (ws.Cells[dbFieldRowIndex, colIndex] as Range)?.Value != null)
            {
                groupName = string.Empty;

                if (rowGroup1Index != 0)
                {
                    groupName = (ws.Cells[rowGroup1Index, colIndex] as Range).MergeArea.Cells[1, 1].Value + " | ";

                    if (rowGroup2Index != 0)
                    {
                        groupName += (ws.Cells[rowGroup2Index, colIndex] as Range).MergeArea.Cells[1, 1].Value + " | ";
                    }
                }

                string colHeader = groupName + (ws.Cells[headerRowIndex, colIndex] as Range)?.Value;
                string[] colHeaderArr = colHeader.Split('-');
                if (colHeaderArr.Length > 1)
                {
                    int colNumber = -1;
                    try
                    {
                        colNumber = int.Parse(colHeaderArr[0].Trim());
                    }
                    catch { }
                    int startIndex = 0;
                    if (colNumber >= 0)
                    {
                        startIndex = 1;
                    }
                    colHeader = "";
                    for (int i = startIndex; i < colHeaderArr.Length; i++)
                    {
                        if (i > startIndex)
                        {
                                colHeader += "|";
                        }
                        colHeader += colHeaderArr[i];
                    }
                }
                GeneratedFieldEntity entity = new GeneratedFieldEntity()
                {
                    Id = position,
                    Header = colHeader,
                    Name = (ws.Cells[dbFieldRowIndex, colIndex] as Range)?.Value,
                    PropertyName = (ws.Cells[dbFieldRowIndex, colIndex] as Range)?.Value,
                    Position = position,
                    IsVisible = true
                };
                if (!string.IsNullOrEmpty(entity.Name))
                {
                    entities.Add(entity);
                }
                colIndex++;
                position++;

            }

            wb.Close(SaveChanges: false);
            excel.Quit();

            return entities;
        }
        
    }
    public class GeneratedFieldEntity
    {
        public GeneratedFieldEntity() { }  

        public int Id;
        public string Header;
        public string Name;
        public string PropertyName; 
        public int Position;
        public bool IsVisible;
        public int? Width;
    }

}