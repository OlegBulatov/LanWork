using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Diagnostics;
using System.IO;

namespace ExternalEditorLaunch
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void bnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                string TempDirPath = "c:\\Temp\\";//Properties.Settings.Default.TempDir;
                string fileName = TempDirPath + Guid.NewGuid().ToString() + ".txt";
                File.WriteAllText(fileName, tbText.Text);
                Process proc = new Process();
                proc.StartInfo.FileName = tbEditorPath.Text;//Properties.Settings.Default.CompareProgramPath;
                proc.StartInfo.Arguments = fileName;
                proc.Start();
                proc.WaitForExit();
                tbText.Text = File.ReadAllText(fileName);
                File.Delete(fileName);
            }
            catch(Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }
    }
}
