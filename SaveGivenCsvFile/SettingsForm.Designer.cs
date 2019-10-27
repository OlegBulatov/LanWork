namespace SaveGivenCsvFile
{
    partial class SettingsForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.Button bnFolderName;
            this.label3 = new System.Windows.Forms.Label();
            this.bnSaveSettings = new System.Windows.Forms.Button();
            this.tbFolderName = new System.Windows.Forms.TextBox();
            this.chShowCount = new System.Windows.Forms.CheckBox();
            this.tbCounterStep = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.tbConnectionString = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.chUseWcf = new System.Windows.Forms.CheckBox();
            this.tbWcfService = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.tbPassword = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.tbCommand = new System.Windows.Forms.TextBox();
            bnFolderName = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // bnFolderName
            // 
            bnFolderName.Location = new System.Drawing.Point(284, 10);
            bnFolderName.Name = "bnFolderName";
            bnFolderName.Size = new System.Drawing.Size(25, 23);
            bnFolderName.TabIndex = 10;
            bnFolderName.Text = "...";
            bnFolderName.UseVisualStyleBackColor = true;
            bnFolderName.Click += new System.EventHandler(this.bnFolderName_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(9, -1);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(37, 13);
            this.label3.TabIndex = 12;
            this.label3.Text = "папка";
            // 
            // bnSaveSettings
            // 
            this.bnSaveSettings.Location = new System.Drawing.Point(237, 80);
            this.bnSaveSettings.Name = "bnSaveSettings";
            this.bnSaveSettings.Size = new System.Drawing.Size(72, 62);
            this.bnSaveSettings.TabIndex = 11;
            this.bnSaveSettings.Text = "Сохранить настройки";
            this.bnSaveSettings.UseVisualStyleBackColor = true;
            this.bnSaveSettings.Click += new System.EventHandler(this.bnSaveSettings_Click);
            // 
            // tbFolderName
            // 
            this.tbFolderName.Location = new System.Drawing.Point(12, 12);
            this.tbFolderName.Name = "tbFolderName";
            this.tbFolderName.Size = new System.Drawing.Size(276, 20);
            this.tbFolderName.TabIndex = 9;
            // 
            // chShowCount
            // 
            this.chShowCount.AutoSize = true;
            this.chShowCount.Location = new System.Drawing.Point(12, 86);
            this.chShowCount.Name = "chShowCount";
            this.chShowCount.Size = new System.Drawing.Size(129, 17);
            this.chShowCount.TabIndex = 13;
            this.chShowCount.Text = "показывать счетчик";
            this.chShowCount.UseVisualStyleBackColor = true;
            // 
            // tbCounterStep
            // 
            this.tbCounterStep.Location = new System.Drawing.Point(144, 96);
            this.tbCounterStep.Name = "tbCounterStep";
            this.tbCounterStep.Size = new System.Drawing.Size(71, 20);
            this.tbCounterStep.TabIndex = 14;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(141, 80);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(74, 13);
            this.label1.TabIndex = 15;
            this.label1.Text = "шаг счетчика";
            // 
            // tbConnectionString
            // 
            this.tbConnectionString.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbConnectionString.Location = new System.Drawing.Point(12, 161);
            this.tbConnectionString.Multiline = true;
            this.tbConnectionString.Name = "tbConnectionString";
            this.tbConnectionString.Size = new System.Drawing.Size(297, 72);
            this.tbConnectionString.TabIndex = 16;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 145);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(105, 13);
            this.label2.TabIndex = 17;
            this.label2.Text = "строка соединения";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // chUseWcf
            // 
            this.chUseWcf.AutoSize = true;
            this.chUseWcf.Location = new System.Drawing.Point(12, 38);
            this.chUseWcf.Name = "chUseWcf";
            this.chUseWcf.Size = new System.Drawing.Size(87, 17);
            this.chUseWcf.TabIndex = 18;
            this.chUseWcf.Text = "WCF service";
            this.chUseWcf.UseVisualStyleBackColor = true;
            // 
            // tbWcfService
            // 
            this.tbWcfService.Location = new System.Drawing.Point(12, 57);
            this.tbWcfService.Name = "tbWcfService";
            this.tbWcfService.Size = new System.Drawing.Size(297, 20);
            this.tbWcfService.TabIndex = 19;
            // 
            // label4
            // 
            this.label4.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 241);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(43, 13);
            this.label4.TabIndex = 21;
            this.label4.Text = "пароль";
            // 
            // tbPassword
            // 
            this.tbPassword.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbPassword.Location = new System.Drawing.Point(61, 240);
            this.tbPassword.Name = "tbPassword";
            this.tbPassword.PasswordChar = '*';
            this.tbPassword.Size = new System.Drawing.Size(248, 20);
            this.tbPassword.TabIndex = 20;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 106);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(51, 13);
            this.label5.TabIndex = 23;
            this.label5.Text = "команда";
            // 
            // tbCommand
            // 
            this.tbCommand.Location = new System.Drawing.Point(15, 122);
            this.tbCommand.Name = "tbCommand";
            this.tbCommand.Size = new System.Drawing.Size(200, 20);
            this.tbCommand.TabIndex = 22;
            // 
            // SettingsForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(321, 267);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.tbCommand);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.tbPassword);
            this.Controls.Add(this.tbWcfService);
            this.Controls.Add(this.chUseWcf);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.tbConnectionString);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.tbCounterStep);
            this.Controls.Add(this.chShowCount);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.bnSaveSettings);
            this.Controls.Add(bnFolderName);
            this.Controls.Add(this.tbFolderName);
            this.Name = "SettingsForm";
            this.Text = "SettingsForm";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button bnSaveSettings;
        private System.Windows.Forms.TextBox tbFolderName;
        private System.Windows.Forms.CheckBox chShowCount;
        private System.Windows.Forms.TextBox tbCounterStep;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox tbConnectionString;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.CheckBox chUseWcf;
        private System.Windows.Forms.TextBox tbWcfService;
        private System.Windows.Forms.Label label4;
        protected System.Windows.Forms.TextBox tbPassword;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox tbCommand;
    }
}