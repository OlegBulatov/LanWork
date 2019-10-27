using System;
using System.Collections.ObjectModel;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Management.Automation;

namespace GitManager
{
    public partial class MainForm : Form
    {
        private static string GetBaseDirectory()
        {
            string result = Properties.Settings.Default.WorkDirectory;
            if(string.IsNullOrEmpty(result))
                result = AppDomain.CurrentDomain.BaseDirectory;
            return result;
        }
        private string directory = GetBaseDirectory();
        public MainForm()
        {
            InitializeComponent();
        }

        private void bnTest_Click(object sender, EventArgs e)
        {
            tbHelp.Text = "";
            tbResult.Text = "";

            using (PowerShell powershell = PowerShell.Create())
            {
                StringBuilder sb = new StringBuilder();
                bool onMainBranch = false;
                string CurrentBranch = null;
                // this changes from the user folder that PowerShell starts up with to your git repository
                powershell.AddScript(String.Format(@"cd {0}", directory));

                powershell.AddScript(@"git branch");
                //powershell.AddScript(@"git add *");
                //powershell.AddScript(@"git commit -m 'git commit from PowerShell in C#'");
                //powershell.AddScript(@"git push");

                Collection<PSObject> results = powershell.Invoke();
                foreach (PSObject res in results)
                {
                    string strRes = res.ToString();
                    if (strRes.Contains("* "))
                    {
                        CurrentBranch = strRes.Replace("* ", "").Trim();
                        onMainBranch = CurrentBranch == "develop";
                        break;
                    }
                }
                if(onMainBranch)
                {
                    CurrentBranch = DateTime.Today.ToShortDateString() + "_" + System.Environment.UserName.Substring(0, 2).ToUpper() + "_" + tbBranch.Text.Replace(" ", "_");
                    powershell.AddScript(@"git checkout -b feature/" + CurrentBranch);
                    powershell.AddScript(@"git add --all");
                    powershell.AddScript(@"git commit -m 'git commit new branch " + CurrentBranch + "'");
                    powershell.AddScript(@"git push --set-upstream origin feature/" + CurrentBranch);
                }
                else
                {
                    powershell.AddScript(@"git add --all");
                    powershell.AddScript(string.Format("git commit -m 'git commit {0} with comment [{1}]'", CurrentBranch, tbCommitMessage.Text));
                    powershell.AddScript(@"git push");
                }
                results = powershell.Invoke();
                foreach (PSObject res in results)
                {
                    sb.Append(res.ToString() + "\r\n");
                }
                if (sb.ToString().Trim() == "")
                    sb.Append(string.Format("push of branch {0} succeeded", CurrentBranch));
                tbResult.Text = sb.ToString();
            }
        }

        private void bnHelp_Click(object sender, EventArgs e)
        {
            tbHelp.Text = "";
            using (PowerShell powershell = PowerShell.Create())
            {
                StringBuilder sb = new StringBuilder();
                powershell.AddScript(String.Format(@"cd {0}", directory));

                powershell.AddScript(@"git branch");
                Collection<PSObject> results = powershell.Invoke();
                foreach (PSObject res in results)
                {
                    sb.Append(res.ToString() + "\r\n");
                }
                tbHelp.Text = sb.ToString();
            }
        }

        private void bnSettings_Click(object sender, EventArgs e)
        {
            (new fmSettings()).ShowDialog();
            directory = GetBaseDirectory();
        }
    }
}
