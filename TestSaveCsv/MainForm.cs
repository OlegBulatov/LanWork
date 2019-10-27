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

namespace TestSaveCsv
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
        }

        private void bnTest_Click(object sender, EventArgs e)
        {
            Process proc = new Process();
            proc.StartInfo.FileName = @"SaveGivenCsvFile.exe";//very important comment in branch
            proc.StartInfo.Arguments = "x " + tbQuery.Text.Replace("\t"," ").Replace(" ", "[[]]") + "{{{}}}" + tbFileName.Text.Replace(" ", "[[]]");//comment 2 in develop
            proc.Start();
        }
    }
}
