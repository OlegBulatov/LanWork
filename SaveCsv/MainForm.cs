using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Drawing;
using System.Linq;
using System.IO;
using System.Threading.Tasks;
using System.Windows.Forms;
using DIOS.Common;

namespace SaveCsv
{
    public partial class MainForm : Form
    {
        int RecordsCount;
        int RecordsCountPrevious;
        public MainForm()
        {
            InitializeComponent();
            this.tbConnectionString.Text = Properties.Settings.Default.ConnectionString;
            this.tbQuery.Text = Properties.Settings.Default.QueryText;
            this.tbFileName.Text = Properties.Settings.Default.FileName;
        }

        private void DisplayCount(int C)
        {
            try
            {
                RecordsCount = C;
                if (RecordsCount - RecordsCountPrevious >= 100)
                {
                    RecordsCountPrevious = RecordsCount;
                    label4.Invoke(new Action(() => label4.Text = RecordsCount.ToString()));
                }
                //label4.Text = C.ToString();
            }
            catch
            {
                //label4.Text = "_";
            }
        }

        private void bnFileName_Click(object sender, EventArgs e)
        {
            try
            {
                System.Windows.Forms.FileDialog fd = new System.Windows.Forms.OpenFileDialog();
                fd.Title = "Выбор файла";
                fd.InitialDirectory = AppDomain.CurrentDomain.BaseDirectory;
                fd.Filter = "Файлы csv|*.csv|Все файлы|*.*";
                if (fd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    tbFileName.Text = fd.FileName;
                }
            }
            catch (Exception exc)
            {
                System.Windows.Forms.MessageBox.Show(exc.Message);
            }
        }
        private Stream _stream;
        private void WriteToOwnStream()
        {
            string str = "Test12";
            StreamWriter SW = new StreamWriter(_stream, Encoding.Default);
            SW.Write(str);
            SW.Close();
        }
        private Task WriteToStream(Stream S)
        {
            _stream = S;
            Action action = new Action(WriteToOwnStream);
            Task T = new Task(action);
            T.Start();
            return T;
        }

        private async void bnExport_Click(object sender, EventArgs e)
        {
            RecordsCountPrevious = RecordsCount = 0;
            StreamWriter SW = null;
            try
            {
                if (tbConnectionString.Text == "")
                {
                    throw new Exception("Не задана строка соединения");
                }
                if (tbQuery.Text == "")
                {
                    throw new Exception("Не задан запрос к БД");
                }
                if (tbFileName.Text == "")
                {
                    throw new Exception("Не выбран файл");
                }
                string connString = tbConnectionString.Text;
                SqlManager M = new SqlManager(connString);
                M.dbManager.displayCountMethod = new DisplayCountMethod(DisplayCount);
                if (File.Exists(tbFileName.Text))
                    File.Delete(tbFileName.Text);
                Stream S = new FileStream(tbFileName.Text, FileMode.OpenOrCreate);
                SW = new StreamWriter(S, Encoding.Default);
                await M.ExecSqlToStreamAsync(tbQuery.Text, SW);
                MessageBox.Show("Выгрузка в файл завершена.");
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
            finally
            {
                if(SW != null)
                    SW.Close();
            }
        }

        private void bnSaveSettings_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Сохранить настройки?", "Подтвердите действие", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                Properties.Settings.Default.ConnectionString = this.tbConnectionString.Text;
                Properties.Settings.Default.QueryText = this.tbQuery.Text;
                Properties.Settings.Default.FileName = this.tbFileName.Text;
                Properties.Settings.Default.Save();
                MessageBox.Show("Настройки сохранены.");
            }
        }

        private void tbFileName_TextChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
    }
}
