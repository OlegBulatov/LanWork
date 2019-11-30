using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.IO;
using System.Windows.Markup;
using WpfLib;
using Newtonsoft.Json;
using System.Xml;
using System.Collections;
using System.Windows.Media;

namespace WpfTreeView
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public class fileStruct
    {
        public string class_name;
        public string file_name;
    }
    public partial class MainWindow : Window
    {
        private Grid contentGrid;
        private TextBox tbFilter;
        private DemoViewModel DVM;
        private Hashtable fnTable = null;
        private TreeViewModel VM;
        public MainWindow()
        {
            InitializeComponent();
            VM = new TreeViewModel();
            mTreeView.DataContext = VM;
        }

        private void mTreeView_SelectedItemChanged(object sender, RoutedPropertyChangedEventArgs<object> e)
        {
            dynamic selectedNode = e.NewValue;
            if (selectedNode != null)
            {
                string nodeClassName = selectedNode.ClassName;
                if (!string.IsNullOrEmpty(nodeClassName))
                {
                    string className = selectedNode.ClassName;
                    ShowDataForm(className);
                    ShowFilterForm(className);
                }
                else
                {
                    frForm.Content = "empty node";
                }
            }
        }

        private void ShowDataForm(string formClassName)
        {
            if (DVM == null)
                DVM = new DemoViewModel();
            try
            {
                DVM.ClassName = formClassName;
            }
            catch(Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
            string fileName = formClassName + ".xaml";
            if (!File.Exists(fileName))
            {
                if (!ConstructDataForm(formClassName))
                {
                    frForm.Content = "can not construct xaml for " + fileName;
                    return;
                }
            }
            using (FileStream fs = File.Open(fileName, FileMode.Open))
            {
                try
                {
                    var V = XamlReader.Load(fs) as Window;
                    if (V != null)
                    {
                        tbFilter = LogicalTreeHelper.FindLogicalNode(V, "tbFilter") as TextBox;
                        Button bnFilter = LogicalTreeHelper.FindLogicalNode(V, "bnFilter") as Button;
                        if (bnFilter != null)
                            bnFilter.Click += BnRefresh_Click;
                        V.DataContext = DVM;
                        frForm.Content = V.Content;
                    }
                    else
                    {
                        frForm.Content = "can not load " + fileName;
                    }
                }
                catch (Exception exc)
                {
                    MessageBox.Show(exc.Message);
                }
            }
        }

        private void ShowFilterForm(string formClassName)
        {
            if (DVM == null)
                DVM = new DemoViewModel();
            try
            {
                DVM.ClassName = formClassName;
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
            string fileName = formClassName + "_Filter.xaml";
            if (!File.Exists(fileName))
            {
                frFilter.Content = "can not construct xaml for " + fileName;
                return;
            }
            using (FileStream fs = File.Open(fileName, FileMode.Open))
            {
                try
                {
                    var V = XamlReader.Load(fs) as Window;
                    if (V != null)
                    {
                        contentGrid = LogicalTreeHelper.FindLogicalNode(V, "filterGrid") as Grid;
                        V.DataContext = DVM;
                        frFilter.Content = V.Content;
                    }
                    else
                    {
                        frFilter.Content = "can not load " + fileName;
                    }
                }
                catch (Exception exc)
                {
                    MessageBox.Show(exc.Message);
                }
            }
        }
        private void BnRefresh_Click(object sender, EventArgs e)
        {
            if (DVM != null && tbFilter != null)
                DVM.ApplyFilters();

            //string filterCondition = tbFilter.Text;
            //try
            //{
            //    StringBuilder Where = new StringBuilder();
            //    if (contentGrid != null)
            //    {
            //        foreach (UIElement el in contentGrid.Children)
            //        {
            //            Type elType = el.GetType();
            //            if (elType.GetProperty("IsEnabled")?.GetValue(el) != null && (bool)elType.GetProperty("IsEnabled").GetValue(el))
            //            {
            //                if (elType.GetProperty("Tag") != null && elType.GetProperty("Tag").GetValue(el) != null)
            //                {
            //                    object Tag = el.GetType().GetProperty("Tag").GetValue(el);
            //                    FilterStruct fs = JsonConvert.DeserializeObject<FilterStruct>(Tag.ToString());
            //                    if (fs != null)
            //                    {
            //                        if (Where.ToString() != "")
            //                            Where.Append(" and ");
            //                        Where.Append("(");
            //                        Where.Append(fs.DataField);
            //                        Where.Append(" ");
            //                        Where.Append(fs.Predicate);
            //                        Where.Append(" '");
            //                        Where.Append(fs.Predicate == "like" ? "%" : "");
            //                        object value = elType.GetProperty(fs.DataProperty)?.GetValue(el);
            //                        if (value != null)
            //                            Where.Append(value.ToString());
            //                        Where.Append(fs.Predicate == "like" ? "%" : "");
            //                        Where.Append("')");
            //                    }
            //                }
            //            }
            //        }
            //        filterCondition = Where.ToString();
            //    }
            //    if (DVM != null && tbFilter != null)
            //        DVM.ApplyFilters(filterCondition);
            //}
            //catch (Exception exc)
            //{
            //    MessageBox.Show(exc.Message);
            //}
        }

        private bool ConstructDataForm(string formClassName)
        {
            if(fnTable == null)
            {
                this.FillFileNameTable();
            }
            object sourceFileName = fnTable[formClassName];
            if (sourceFileName == null)
            {
                System.Windows.Forms.FileDialog fd = new System.Windows.Forms.OpenFileDialog();
                fd.Title = "Выбор файла для класса " + formClassName;
                fd.InitialDirectory = AppDomain.CurrentDomain.BaseDirectory;
                fd.Filter = "Файлы dfm|*.dfm";
                if (fd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    sourceFileName = fd.FileName;
                }
            }
            if(sourceFileName == null)
            {
                return false;
            }
            string classNameInFile = XGenerator.GetClassName(sourceFileName.ToString());
            if (formClassName != classNameInFile)
            {
                MessageBox.Show(string.Format("Название класса в выбранном файле ({0}) не соответствует названию класса формы {1}", classNameInFile, formClassName));
                return false;
            }
            SourceFilesGenerationService S = new SourceFilesGenerationService();
            List<GeneratedFieldEntity> generatedFieldEntities = null;
            generatedFieldEntities = S.GenerateFieldsFromDFM(sourceFileName.ToString());
            string fieldsJson = JsonConvert.SerializeObject(generatedFieldEntities);
            //string jsonFileName = fileName + ".json";
            //using (StreamWriter SWJson = File.CreateText(jsonFileName))
            //{
            //    SWJson.Write(fieldsJson);
            //    SWJson.Flush();
            //    SWJson.Close();
            //}
            XmlDocument xdoc = new XmlDocument();
            xdoc.Load("c:\\Temp\\xtemplate.xml");
            xdoc = XGenerator.GenerateXml(xdoc, fieldsJson, new Dictionary<string, string>(), new Dictionary<string, string>(), true, classNameInFile);
            xdoc.Save(formClassName + ".xaml");
            return true;
            //MessageBox.Show(fd.FileName);
        }

        private void FillFileNameTable()
        {
            fnTable = new Hashtable();
            using (FileStream fs = File.Open("exp_file_names.json", FileMode.Open))
            {
                byte[] bts = new byte[fs.Length];
                fs.Position = 0;
                fs.Read(bts, 0, bts.Length);
                string fnJson = System.Text.Encoding.Default.GetString(bts);
                fileStruct[] fileNames = JsonConvert.DeserializeObject<fileStruct[]>(fnJson);
                for (int i = 0; i < fileNames.Length; i++)
                {
                    fnTable[fileNames[i].class_name] = fileNames[i].file_name;
                }
            }
        }
    }
}
