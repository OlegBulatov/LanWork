using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WpfLib;
using Newtonsoft.Json;

namespace ColumnsDesignGenerator
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void bnGetModel_Click(object sender, EventArgs e)
        {
            string sourceFileName = null;
            System.Windows.Forms.FileDialog fd = new System.Windows.Forms.OpenFileDialog();
            fd.Title = "Выбор файла *.dfm";
            fd.InitialDirectory = AppDomain.CurrentDomain.BaseDirectory;
            fd.Filter = "Файлы dfm|*.dfm";
            if (fd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                sourceFileName = fd.FileName;
            }
            if (sourceFileName == null)
            {
                return;
            }
            //string classNameInFile = XGenerator.GetClassName(sourceFileName.ToString());

            SourceFilesGenerationService S = new SourceFilesGenerationService();
            List<GeneratedFieldEntity> generatedFieldEntities = S.GenerateFieldsFromDFM(sourceFileName);
            string fieldsJson = JsonConvert.SerializeObject(generatedFieldEntities);
            
            Dictionary<string, string> widthsDictionary = new Dictionary<string, string>();

            List<GeneratedFieldEntity> fieldsList = JsonConvert.DeserializeObject<List<GeneratedFieldEntity>>(fieldsJson);
            List<Tuple<string, string>> headersList = new List<Tuple<string, string>>();
            foreach (GeneratedFieldEntity fe in fieldsList)
            {
                if (!widthsDictionary.ContainsKey(fe.PropertyName) && fe.Width != null)
                    widthsDictionary.Add(fe.PropertyName, fe.Width.Value.ToString());
                headersList.Add(new Tuple<string, string>(fe.PropertyName, fe.Header == null ? fe.PropertyName : fe.Header.Replace("-", "|").Replace("К|во", "Кол-во")));
            }
            XTree Tree = XGenerator.GetXTree(headersList, widthsDictionary, new Dictionary<string, string>(), false, "~");
            tbResult.Text = Tree.GetJsonModel("ColumnsGroup", "Attribute");
        }
    }
}
