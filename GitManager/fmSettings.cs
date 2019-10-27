using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GitManager
{
    public partial class fmSettings : Form
    {
        public fmSettings()
        {
            InitializeComponent();
            tbDirectory.Text = Properties.Settings.Default.WorkDirectory;
        }

        private void fmSettings_FormClosed(object sender, FormClosedEventArgs e)
        {
            if (DialogResult == DialogResult.OK)
            {
                Properties.Settings.Default.WorkDirectory = tbDirectory.Text;
                Properties.Settings.Default.Save();
                MessageBox.Show("Settings saved.");
            }
        }
    }
}
