namespace GitManager
{
    partial class MainForm
    {
        /// <summary>
        /// Обязательная переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Требуемый метод для поддержки конструктора — не изменяйте 
        /// содержимое этого метода с помощью редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.bnTest = new System.Windows.Forms.Button();
            this.tbResult = new System.Windows.Forms.TextBox();
            this.tbBranch = new System.Windows.Forms.TextBox();
            this.tbHelp = new System.Windows.Forms.TextBox();
            this.bnHelp = new System.Windows.Forms.Button();
            this.tbCommitMessage = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.bnSettings = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // bnTest
            // 
            this.bnTest.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.bnTest.Location = new System.Drawing.Point(12, 258);
            this.bnTest.Name = "bnTest";
            this.bnTest.Size = new System.Drawing.Size(75, 23);
            this.bnTest.TabIndex = 0;
            this.bnTest.Text = "Go";
            this.bnTest.UseVisualStyleBackColor = true;
            this.bnTest.Click += new System.EventHandler(this.bnTest_Click);
            // 
            // tbResult
            // 
            this.tbResult.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbResult.Location = new System.Drawing.Point(12, 96);
            this.tbResult.Multiline = true;
            this.tbResult.Name = "tbResult";
            this.tbResult.ReadOnly = true;
            this.tbResult.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbResult.Size = new System.Drawing.Size(276, 73);
            this.tbResult.TabIndex = 2;
            // 
            // tbBranch
            // 
            this.tbBranch.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbBranch.Location = new System.Drawing.Point(12, 22);
            this.tbBranch.Name = "tbBranch";
            this.tbBranch.Size = new System.Drawing.Size(276, 20);
            this.tbBranch.TabIndex = 3;
            // 
            // tbHelp
            // 
            this.tbHelp.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbHelp.Location = new System.Drawing.Point(12, 188);
            this.tbHelp.Multiline = true;
            this.tbHelp.Name = "tbHelp";
            this.tbHelp.ReadOnly = true;
            this.tbHelp.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbHelp.Size = new System.Drawing.Size(276, 64);
            this.tbHelp.TabIndex = 4;
            // 
            // bnHelp
            // 
            this.bnHelp.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.bnHelp.Location = new System.Drawing.Point(222, 258);
            this.bnHelp.Name = "bnHelp";
            this.bnHelp.Size = new System.Drawing.Size(30, 23);
            this.bnHelp.TabIndex = 5;
            this.bnHelp.Text = "?";
            this.bnHelp.UseVisualStyleBackColor = true;
            this.bnHelp.Click += new System.EventHandler(this.bnHelp_Click);
            // 
            // tbCommitMessage
            // 
            this.tbCommitMessage.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbCommitMessage.Location = new System.Drawing.Point(12, 58);
            this.tbCommitMessage.Name = "tbCommitMessage";
            this.tbCommitMessage.Size = new System.Drawing.Size(276, 20);
            this.tbCommitMessage.TabIndex = 6;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 6);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(63, 13);
            this.label1.TabIndex = 7;
            this.label1.Text = "new branch";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 45);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(85, 13);
            this.label2.TabIndex = 8;
            this.label2.Text = "commit message";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(12, 81);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(32, 13);
            this.label3.TabIndex = 9;
            this.label3.Text = "result";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 172);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(115, 13);
            this.label4.TabIndex = 10;
            this.label4.Text = "show current branches";
            // 
            // bnSettings
            // 
            this.bnSettings.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.bnSettings.Location = new System.Drawing.Point(258, 258);
            this.bnSettings.Name = "bnSettings";
            this.bnSettings.Size = new System.Drawing.Size(30, 23);
            this.bnSettings.TabIndex = 11;
            this.bnSettings.Text = "*";
            this.bnSettings.UseVisualStyleBackColor = true;
            this.bnSettings.Click += new System.EventHandler(this.bnSettings_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(300, 287);
            this.Controls.Add(this.bnSettings);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.tbCommitMessage);
            this.Controls.Add(this.bnHelp);
            this.Controls.Add(this.tbHelp);
            this.Controls.Add(this.tbBranch);
            this.Controls.Add(this.tbResult);
            this.Controls.Add(this.bnTest);
            this.Name = "MainForm";
            this.Text = "Git Manager";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button bnTest;
        private System.Windows.Forms.TextBox tbResult;
        private System.Windows.Forms.TextBox tbBranch;
        private System.Windows.Forms.TextBox tbHelp;
        private System.Windows.Forms.Button bnHelp;
        private System.Windows.Forms.TextBox tbCommitMessage;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button bnSettings;
    }
}

