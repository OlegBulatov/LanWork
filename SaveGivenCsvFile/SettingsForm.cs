using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DIOS.Common;

namespace SaveGivenCsvFile
{
    public partial class SettingsForm : Form
    {
        public SettingsForm()
        {
            InitializeComponent();
            this.tbFolderName.Text = Properties.Settings.Default.FolderName;
            this.chShowCount.Checked = Properties.Settings.Default.ShowCount;
            this.tbCounterStep.Text = Properties.Settings.Default.CounterStep.ToString();
            this.tbConnectionString.Text = Properties.Settings.Default.ConnectionString;
            this.tbCommand.Text = Properties.Settings.Default.Command;
            this.chUseWcf.Checked = Properties.Settings.Default.UseWcf;
            this.tbWcfService.Text = Properties.Settings.Default.WcfServiceUrl;
            if(!string.IsNullOrEmpty(Properties.Settings.Default.Password))
                this.tbPassword.Text = Cryptor.Decrypt(Properties.Settings.Default.Password, "ntcnjdsq");
        }

        private void bnFolderName_Click(object sender, EventArgs e)
        {
            try
            {
                System.Windows.Forms.FolderBrowserDialog fd = new System.Windows.Forms.FolderBrowserDialog();
                fd.Description = "Выбор папки";
                if (fd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    tbFolderName.Text = fd.SelectedPath;
                }
            }
            catch (Exception exc)
            {
                System.Windows.Forms.MessageBox.Show(exc.Message);
            }
        }

        private void bnSaveSettings_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Сохранить настройки?", "Подтвердите действие", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                Properties.Settings.Default.FolderName = this.tbFolderName.Text;
                Properties.Settings.Default.ShowCount = this.chShowCount.Checked;
                Properties.Settings.Default.ConnectionString = this.tbConnectionString.Text;
                Properties.Settings.Default.Command = this.tbCommand.Text;
                Properties.Settings.Default.UseWcf = this.chUseWcf.Checked;
                Properties.Settings.Default.WcfServiceUrl = this.tbWcfService.Text;
                Properties.Settings.Default.Password = Cryptor.Encrypt(this.tbPassword.Text, "ntcnjdsq");
                try
                {
                    Properties.Settings.Default.CounterStep = int.Parse(this.tbCounterStep.Text); 
                }
                catch
                {
                    this.tbCounterStep.Text = Properties.Settings.Default.CounterStep.ToString();
                }
                Properties.Settings.Default.Save();
                MessageBox.Show("Настройки сохранены.");
            }
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }
    }
}
