//-----------------------------------------------------------------------
// <copyright file="SourceFilesGenerationService.cs" company="Lanit">
//     Copyright 2018 (c) Lanit. All rights reserved.
// </copyright>
// <author>KNosov</author>
//-----------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.Collections;
using System.IO;
using System.Linq;
using Microsoft.Office.Interop.Excel;
using Newtonsoft.Json;

namespace WpfDemoApp//INV.Application.Support.Services.SourceFilesGenerator
{
    /// <summary>
    /// Сервис для генерации исходных файлов
    /// </summary>
    public class SourceFilesGenerationService 
    {
        /// <summary>
        /// Инициализирует новый экземпляр класса <see cref="SourceFilesGenerationService"/>
        /// </summary>
        /// <param name="repository">Сервис</param>
 

        /// <summary>
        /// Получить сущность, описывающую поля генерируемой сущности
        /// </summary>        
        /// <param name="owner">Владелец схемы</param>
        /// <param name="tableName">Фильтр</param>
        /// <param name="sqlFilter">Фильтр в виде строки SQL</param>
        /// <returns>Сущность, описывающую поля генерируемой сущности</returns>
        //public GeneratedFieldContainer GetGeneratedFieldContainer(string owner, string tableName, GroupFilter sqlFilter = null)
        //{
        //    return new GeneratedFieldContainer
        //    {
        //        Documents = GetGeneratedFieldDbEntities(owner, tableName, sqlFilter).ToObservableCollection()
        //    };
        //}

        /// <summary>
        /// Получить поля генерируемой сущности из БД
        /// </summary>
        /// <param name="owner">Владелец схемы</param>
        /// <param name="tableName">Фильтр</param>
        /// <param name="sqlFilter">Фильтр в виде строки SQL</param>       
        /// <returns>Поля генерируемой сущности</returns>
        //public IEnumerable<GeneratedFieldEntity> GetGeneratedFieldDbEntities(string owner, string tableName, GroupFilter sqlFilter = null)
        //=> GetAll<GeneratedFieldDto, GeneratedFieldEntity>(new GetGeneratedFieldEntitiesSpec(owner, tableName, sqlFilter));


        /// <summary>
        /// Список служебных имен
        /// </summary>
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
                            //if(i > startIndex + 1) 
                            //    colHeader += "-";
                            //else
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
                    PropertyName = (ws.Cells[dbFieldRowIndex, colIndex] as Range)?.Value,//GeneratedFieldDto.GetPropertyName((ws.Cells[dbFieldRowIndex, colIndex] as Range)?.Value),
                    //DataFormat = GeneratedFieldDto.GetDataFormatFromExcel((ws.Cells[dataFormatRowIndex, colIndex] as Range)?.Value),
                    Position = position,
                    IsVisible = true
                };
                if (!string.IsNullOrEmpty(entity.Name))
                {
                    object dataValue = (ws.Cells[dataRowIndex, colIndex] as Range)?.Value;
                    ArrayList dataValues = new ArrayList();
                    int r = dataRowIndex;
                    while (r < colNumRowIndex)
                    {
                        dataValues.Add(dataValue);
                        dataValue = (ws.Cells[++r, colIndex] as Range)?.Value;
                    }
                    entity.ValuesArray = dataValues.ToArray();
                    entities.Add(entity);
                }
                colIndex++;
                position++;

            }

            //string[] viewArray = (ws.Cells[viewNameRowIndex, 2] as Range)?.Value.ToString().Split('.');

            wb.Close(SaveChanges: false);
            excel.Quit();

            //// Получаем сущности из БД
            //List<GeneratedFieldEntity> dbEntities = GetGeneratedFieldDbEntities(viewArray[0], viewArray[1]).ToList();

            //if (!dbEntities.IsNullOrEmpty())
            //{
            //    // Проставляем типы данных из БД
            //    foreach (var dbEntity in dbEntities)
            //    {
            //        entities.Where(w => w.Name?.ToLower() == dbEntity.Name?.ToLower()).ToList().ForEach(fe => fe.DataType = dbEntity.DataType);
            //    }

            //    // Получаем и запоминаем максимальную позицию
            //    int maxPos = entities.Max(m => m.Position);
            //    int tempPos = maxPos;

            //    // Менеям 
            //    dbEntities.Where(w => (entities.Exists(e => e.Name?.ToLower() == w.Name.ToLower()))).ForEach(fe => fe.IsVisible = false);

            //    // Проставляем позицию и меняем видимость элементам из БД, которые не были найдены в файле Excel
            //    dbEntities.Where(w => w.IsVisible).ForEach(fe => { fe.IsVisible = false; fe.Position = ++tempPos; });

            //    // Добавляем в коллекцию полей из файла Excel коллекцию полей из БД
            //    entities.AddRange(dbEntities.Where(w => w.Position > maxPos));
            //}

            return entities;
        }

        /// <summary>
        /// Получить суммарную информацию  о полях генерируемой сущности
        /// </summary>
        /// <param name="owner">Владелец схемы</param>
        /// <param name="tableName">Фильтр</param>
        /// <param name="sqlFilter">Фильтр в виде строки SQL</param>
        /// <param name="pageNumber">Номер страницы, которую нужно получить</param>
        /// <returns>Суммарная информацию о полях генерируемой сущности</returns>
        //public GeneratedFieldSummary GetGeneratedFieldSummary(string owner, string tableName, GroupFilter sqlFilter = null, int pageNumber = -1)
        //=> Get<GeneratedFieldSummary>(new GetSumGeneratedFieldSpec(owner, tableName, sqlFilter));

        /// <summary>
        /// Проверить поля
        /// </summary>
        /// <param name="fields">Список полей</param>
        /// <returns>True - если поля правильно заполнены, False - если нет</returns>
        

        /// <summary>
        /// Сгенерировать исходные файлы
        /// </summary>
        /// <param name="outputFolder">Каталог для сохранения</param>
        /// <param name="entityName">Наименование сущности</param>
        /// <param name="entityDescription">Описание сущности</param>
        /// <param name="fields">Список полей</param>

        /// <summary>
        /// Создать исходный файл ДТО
        /// </summary>
        /// <param name="outputFolder">Каталог для сохранения</param>
        /// <param name="entityName">Наименование сущности</param>
        /// <param name="entityDescription">Описание сущности</param>
        /// <param name="fields">Список полей</param>

        /// <summary>
        /// Создать файл сущности
        /// </summary>
        /// <param name="outputFolder">Каталог для сохранения</param>
        /// <param name="entityName">Наименование сущности</param>
        /// <param name="entityDescription">Описание сущности</param>
        /// <param name="fields">Список полей</param>

        /// <summary>
        /// Создать файл суммарной информации
        /// </summary>
        /// <param name="outputFolder">Каталог для сохранения</param>
        /// <param name="entityName">Наименование сущности</param>
        /// <param name="entityDescription">Описание сущности</param>
        /// <param name="fields">Список полей</param>

        
    }
}