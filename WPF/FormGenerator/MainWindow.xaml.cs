using System;
using System.Xml;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using WpfDemoApp.ViewModels;
using System.Windows.Markup;
using Newtonsoft.Json;
using WpfLib;
using System.Text.RegularExpressions;

namespace WpfDemoApp
{

    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private class FilterStruct
        {
            public string DataField;
            public string Predicate;
            public string DataProperty;
        }

        private TextBox tbFilter;
        //private TextBox tbCurrentColumnWidth;
        private DemoViewModel _viewModel;
        private DemoViewModel VM
        {
            get
            {
                return _viewModel;
            }
            set
            {
                _viewModel = value;
                this.DataContext = _viewModel;
            }
        }
        private Window currentWindow = null;
        private Window currentFilterWindow = null;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void tbTextChanged(object sender, EventArgs e)
        {
            TextBox tbCurrentColumnName = sender as TextBox;
            if (VM != null && tbCurrentColumnName != null)
            {
                object val = tbCurrentColumnName.Tag;
                if (val is Tuple<string, string>)
                {
                    Tuple<string, string> T = val as Tuple<string, string>;
                    VM.SetColumnWidth(T.Item1, T.Item2);
                }
            }
        }

        private void BnApplyFilters_Click(object sender, EventArgs e)
        {
            Button srcButton = sender as Button;
            if (srcButton == null)
                return;
            StringBuilder Where = new StringBuilder();
            Grid contentGrid = srcButton.Parent as Grid;
            foreach (UIElement el in contentGrid.Children)
            {
                Type elType = el.GetType();
                if (elType.GetProperty("Tag") != null && elType.GetProperty("Tag").GetValue(el) != null)
                {
                    object Tag = el.GetType().GetProperty("Tag").GetValue(el);
                    FilterStruct fs = JsonConvert.DeserializeObject<FilterStruct>(Tag.ToString());
                    if (fs != null)
                    {
                        if (Where.ToString() != "")
                            Where.Append(" and ");
                        Where.Append("(");
                        Where.Append(fs.DataField);
                        Where.Append(" ");
                        Where.Append(fs.Predicate);
                        Where.Append(" '");
                        //Where.Append(fs.DataType == "string" ? "'" : "");
                        Where.Append(fs.Predicate == "like" ? "%" : "");
                        object value = elType.GetProperty(fs.DataProperty)?.GetValue(el);
                        if(value != null)
                            Where.Append(value.ToString());
                        Where.Append(fs.Predicate == "like" ? "%" : "");
                        //Where.Append(fs.DataType == "string" ? "'" : "");
                        Where.Append("')");
                    }
                }
            }
            if (VM != null)
            {
                try
                {
                    VM.ApplyFilters(Where.ToString());
                }
                catch (Exception exc)
                {
                    MessageBox.Show(exc.Message);
                }
            }
        }

        private void BnRefresh_Click(object sender, EventArgs e)
        {
            try
            {
                if (VM != null && tbFilter != null)
                    VM.ApplyFilters(tbFilter.Text);
            }
            catch(Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }

        private void ShowFiltersForm(string fileName)
        {
            try
            {
                using (FileStream fs = File.Open(fileName, FileMode.Open))
                {

                    if (currentFilterWindow != null)
                    {
                        currentFilterWindow.Close();
                        currentFilterWindow = null;
                    }
                    var V = XamlReader.Load(fs) as Window;
                    if (V != null)
                    {
                        Button bnApplyFilter = LogicalTreeHelper.FindLogicalNode(V, "bnApply") as Button;
                        if (bnApplyFilter != null)
                            bnApplyFilter.Click += BnApplyFilters_Click;
                        if (VM == null)
                            VM = new DemoViewModel();
                        V.DataContext = VM;

                        currentFilterWindow = V;
                        V.Show();
                    }
                }
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            if (currentWindow != null)
            {
                currentWindow.Close();
                currentWindow = null;
            }
            if (currentFilterWindow != null)
            {
                currentFilterWindow.Close();
                currentFilterWindow = null;
            }
        }

        private void ShowDataForm(string fileName)
        {
            using (FileStream fs = File.Open(fileName, FileMode.Open))
            {
                try
                {
                    if (currentWindow != null)
                    {
                        currentWindow.Close();
                        currentWindow = null;
                    }
                    var V = XamlReader.Load(fs) as Window; 
                    if (V != null)
                    {
                        TextBox tbCurrentColumnState = LogicalTreeHelper.FindLogicalNode(V, "tbCurrentColumnState") as TextBox;
                        if (tbCurrentColumnState != null)
                        {
                            tbCurrentColumnState.TextChanged += tbTextChanged;
                        }
                        //tbCurrentColumnWidth = LogicalTreeHelper.FindLogicalNode(V, "tbCurrentColumnWidth") as TextBox;
                        Button bnFilter = LogicalTreeHelper.FindLogicalNode(V, "bnFilter") as Button;
                        if (bnFilter != null)
                            bnFilter.Click += BnRefresh_Click;
                        tbFilter = LogicalTreeHelper.FindLogicalNode(V, "tbFilter") as TextBox;
                        if (VM == null)
                            VM = new DemoViewModel();
                        VM.ClassName = "new class";
                        Label lbClassName = LogicalTreeHelper.FindLogicalNode(V, "lbClassName") as Label;
                        if(lbClassName != null)
                            VM.ClassName = lbClassName.Content.ToString();
                        V.DataContext = VM;

                        currentWindow = V;
                        V.Show();
                    }
                }
                catch (Exception exc)
                {
                    MessageBox.Show(exc.Message);
                }
            }
        }

        private void BnShowForm_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (tbXamlFileName.Text.Trim() == "")
                {
                    System.Windows.MessageBox.Show("Не выбран файл xaml");  
                    return;
                }
                if (chReloadData.IsChecked.Value)
                    VM = new ViewModels.DemoViewModel();

                ShowDataForm(tbXamlFileName.Text); 
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }

        private void BnFiltersForm_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (tbFilterViewName.Text.Trim() == "")
                {
                    System.Windows.Forms.FileDialog fd = new System.Windows.Forms.OpenFileDialog(); 
                    fd.Title = "Выбор файла xaml формы фильтров";
                    fd.DefaultExt = "xaml";
                    fd.InitialDirectory = AppDomain.CurrentDomain.BaseDirectory;
                    fd.Filter = "Файлы XAML|*.xaml";
                    if (fd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                    {
                        tbFilterViewName.Text = fd.FileName;
                    }
                }
                if (tbFilterViewName.Text.Trim() == "")
                {
                    System.Windows.MessageBox.Show("Не выбран файл xaml для формы фильтров");
                    return;
                }
                ShowFiltersForm(tbFilterViewName.Text);
            }
            catch (Exception exc)
            {
                System.Windows.Forms.MessageBox.Show(exc.Message);
            }
        }

        private void BnSaveXaml_Click(object sender, RoutedEventArgs e)
        {
            if (this.VM == null)
                VM = new ViewModels.DemoViewModel();

            FileStream FS = null;
            byte[] _buffer = null;
            try
            {
                string fileName = tbSourceFileName.Text.Trim();
                VM.ClassName = XGenerator.GetClassName(fileName);
                if (tbFieldsJson.Text.Trim() == "")
                        BnFieldsJson_Click(sender, e);

                System.Windows.Forms.FileDialog fd = new System.Windows.Forms.OpenFileDialog();
                fd.Title = "Выбор файла для сохранения xaml";
                fd.DefaultExt = "xaml";
                fd.InitialDirectory = AppDomain.CurrentDomain.BaseDirectory;
                fd.Filter = "Файлы XAML|*.xaml";

                fileName = AppDomain.CurrentDomain.BaseDirectory + "DemoView.xaml";
                if (fd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    fileName = fd.FileName;
                }
                else
                {
                    if (string.IsNullOrEmpty(VM.ClassName))
                    {
                        System.Windows.Forms.MessageBox.Show("Файл не выбран.");
                        return;
                    }
                    fileName = VM.ClassName + ".xaml";
                }
                tbXamlFileName.Text = fileName;

                fileName = tbFieldsJson.Text.Trim();
                FS = File.OpenRead(fileName);
                _buffer = new byte[FS.Length];
                try
                {
                    FS.Read(_buffer, 0, _buffer.Length);
                }
                finally
                {
                    FS.Flush();
                    FS.Close();
                }
                string fieldsJson = System.Text.Encoding.UTF8.GetString(_buffer);

                XmlDocument xdoc = new XmlDocument();
                xdoc.Load("c:\\Temp\\xtemplate.xml");
                xdoc = XGenerator.GenerateXml(xdoc, fieldsJson, VM.userSettings.columnWidthValues, VM.userSettings.columnColorValues, chReadOnly.IsChecked.Value, VM.ClassName);
                fileName = tbXamlFileName.Text.Trim();
                xdoc.Save(fileName);
                System.Windows.Forms.MessageBox.Show(string.Format("Создан файл описания формы ({0})", fileName));
            }
            catch (Exception exc)
            {
                System.Windows.Forms.MessageBox.Show(exc.Message);
            }
        }

        private void BnSourceFileName_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                System.Windows.Forms.FileDialog fd = new System.Windows.Forms.OpenFileDialog();
                fd.Title = "Выбор исходного файла";
                fd.InitialDirectory = AppDomain.CurrentDomain.BaseDirectory;
                fd.Filter = "Файлы Excel|*.xls*|Файлы dfm|*.dfm";
                if (fd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    tbSourceFileName.Text = fd.FileName;
                }
            }
            catch(Exception exc)
            {
                System.Windows.Forms.MessageBox.Show(exc.Message);
            }
        }

        private void BnFieldsJson_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (tbSourceFileName.Text.Trim() == "")
                    BnSourceFileName_Click(sender, e);
                if (tbSourceFileName.Text.Trim() == "")
                {
                    System.Windows.Forms.MessageBox.Show("Исходный файл не выбран.");
                    return;
                }
                System.Windows.Forms.FileDialog fd = new System.Windows.Forms.OpenFileDialog();
                fd.Title = "Выбор файла для сохранения описаний полей";
                fd.DefaultExt = "json";
                fd.InitialDirectory = AppDomain.CurrentDomain.BaseDirectory;
                fd.Filter = "Файлы Json|*.json";
                if (fd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    tbFieldsJson.Text = fd.FileName;
                }
                else if (string.IsNullOrEmpty(tbFieldsJson.Text) || !File.Exists(tbFieldsJson.Text))
                {
                    System.Windows.Forms.MessageBox.Show("Файл не выбран.");
                    return;
                }
                SourceFilesGenerationService S = new SourceFilesGenerationService();

                //IEnumerable<GeneratedFieldEntity> generatedFieldEntities = S.GetGeneratedFieldExcelEntities("test", "testTable", tbSourceFileName.Text);
                List<GeneratedFieldEntity> generatedFieldEntities = null;
                bool generateValues = false;
                if(tbSourceFileName.Text.Contains(".dfm"))
                {
                    generatedFieldEntities = S.GenerateFieldsFromDFM(tbSourceFileName.Text);
                }
                else
                {
                    generateValues = true;
                    generatedFieldEntities = S.GenerateFields(tbSourceFileName.Text);
                }
                string fieldsJson = JsonConvert.SerializeObject(generatedFieldEntities);
                string fileName = tbFieldsJson.Text;
                using (StreamWriter SWJson = File.CreateText(fileName))
                {
                    SWJson.Write(fieldsJson);
                    SWJson.Flush();
                    SWJson.Close();
                }
                System.Windows.Forms.MessageBox.Show(string.Format("Создан файл описания полей ({0})", fileName));
                if (!generateValues)
                    return;

                System.Data.DataTable T = S.GenerateTable(tbSourceFileName.Text);
                fileName = "data.json";
                using (StreamWriter SWJson = File.CreateText(fileName))
                {
                    SWJson.Write(JsonConvert.SerializeObject(T));
                    SWJson.Flush();
                    SWJson.Close();
                }
                System.Windows.Forms.MessageBox.Show(string.Format("Создан файл значений ({0})", fileName));
            }
            catch (Exception exc)
            {
                System.Windows.Forms.MessageBox.Show(exc.Message);
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            tbSourceFileName.Text = "";
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            tbFieldsJson.Text = "";
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            if (tbXamlFileName.Text != "")
            {
                tbXamlFileName.Text = "";
                return;
            }
            try
            {
                System.Windows.Forms.FileDialog fd = new System.Windows.Forms.OpenFileDialog();
                fd.Title = "Выбор файла xaml";
                fd.InitialDirectory = AppDomain.CurrentDomain.BaseDirectory;
                fd.Filter = "Файлы xaml|*.xaml";
                if (fd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    tbXamlFileName.Text = fd.FileName;
                }
            }
            catch (Exception exc)
            {
                System.Windows.Forms.MessageBox.Show(exc.Message);
            }

        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            tbFilterViewName.Text = "";
        }

        private void BnSourceFileOpen_Click(object sender, RoutedEventArgs e)
        {
            if (tbSourceFileName.Text.Trim() == "")
                BnSourceFileName_Click(sender, e);
            if (tbSourceFileName.Text.Trim() == "")
            {
                System.Windows.Forms.MessageBox.Show("Исходный файл не выбран.");
                return;
            }
            var excelapp = new Microsoft.Office.Interop.Excel.Application();
            excelapp.Visible = true;
            excelapp.Workbooks.Open(tbSourceFileName.Text.Trim(), Type.Missing, false, Type.Missing,
              Type.Missing, Type.Missing, Type.Missing, Type.Missing,
              Type.Missing, Type.Missing, Type.Missing, Type.Missing,
              Type.Missing, Type.Missing); 
        }

        private void BnSaveWidths_Click(object sender, RoutedEventArgs e)
        {
            if(VM != null)
            {
                string saveResult = VM.userSettings.Save();
                if (saveResult == "")
                {
                    System.Windows.Forms.MessageBox.Show(string.Format("Настройки для класса {0} сохранены.", VM.ClassName));
                }
                else
                {
                    System.Windows.Forms.MessageBox.Show(saveResult);
                }
            }
        }

        private void BnTest_Click(object sender, RoutedEventArgs e)
        {

            FileStream FS = File.OpenRead(tbSourceFileName.Text);
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
            string fileContent = System.Text.Encoding.Default.GetString(_buffer).Replace("\r\n", "");
            Regex rExp = new Regex(tbRegEx.Text);
            MatchCollection Matches = rExp.Matches(fileContent);
            return;




            //if (this.VM == null)
            //    VM = new ViewModels.DemoViewModel();


            //string fileName = tbFieldsJson.Text.Trim();
            //FileStream FS = File.OpenRead(fileName);
            //byte[] _buffer = new byte[FS.Length];
            //try
            //{
            //    FS.Read(_buffer, 0, _buffer.Length);
            //}
            //finally
            //{
            //    FS.Flush();
            //    FS.Close();
            //}
            //string fieldsJson = System.Text.Encoding.UTF8.GetString(_buffer);

            //XmlDocument xdoc = new XmlDocument();
            //xdoc.Load("c:\\Temp\\xtemplate.xml");
            //xdoc = XGenerator.GenerateXml(xdoc, fieldsJson, VM.userSettings.columnWidthValues, null, true, "TESTCLASSNAME");
            //string xml = xdoc.InnerXml;
            //Stream ms = new MemoryStream();
            //xdoc.Save(ms);
            //byte[] bts = new byte[ms.Length];
            //ms.Position = 0;
            //ms.Read(bts, 0, bts.Length);
            //string xml2 = System.Text.Encoding.UTF8.GetString(bts);
        }

    }

}
