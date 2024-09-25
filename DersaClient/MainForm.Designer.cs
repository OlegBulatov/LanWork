namespace DersaClientService
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
            this.tbUri = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.stStatus = new System.Windows.Forms.StatusStrip();
            this.stLabel = new System.Windows.Forms.ToolStripStatusLabel();
            this.bnStart = new System.Windows.Forms.Button();
            this.tbFullStatus = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.tbConnectionString = new System.Windows.Forms.TextBox();
            this.bnSaveSettings = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.tbServerURL = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.tbCompareFilesPath = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.tbTempDir = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.tbWordDir = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.tbEditCommand = new System.Windows.Forms.TextBox();
            this.chUniqueNames = new System.Windows.Forms.CheckBox();
            this.chDeleteAfterEdit = new System.Windows.Forms.CheckBox();
            this.label8 = new System.Windows.Forms.Label();
            this.tbAfterSaveCommand = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.tbQueryExecProc = new System.Windows.Forms.TextBox();
            this.tbToken = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.bnWsConnect = new System.Windows.Forms.Button();
            this.tbWsUri = new System.Windows.Forms.TextBox();
            this.stStatus.SuspendLayout();
            this.SuspendLayout();
            // 
            // tbUri
            // 
            this.tbUri.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbUri.Location = new System.Drawing.Point(12, 27);
            this.tbUri.Name = "tbUri";
            this.tbUri.Size = new System.Drawing.Size(477, 20);
            this.tbUri.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(95, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Client service URL";
            // 
            // stStatus
            // 
            this.stStatus.GripStyle = System.Windows.Forms.ToolStripGripStyle.Visible;
            this.stStatus.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.stLabel});
            this.stStatus.Location = new System.Drawing.Point(0, 491);
            this.stStatus.Name = "stStatus";
            this.stStatus.ShowItemToolTips = true;
            this.stStatus.Size = new System.Drawing.Size(560, 22);
            this.stStatus.TabIndex = 2;
            this.stStatus.Text = "status";
            // 
            // stLabel
            // 
            this.stLabel.Name = "stLabel";
            this.stLabel.Size = new System.Drawing.Size(38, 17);
            this.stLabel.Text = "status";
            // 
            // bnStart
            // 
            this.bnStart.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bnStart.Location = new System.Drawing.Point(495, 25);
            this.bnStart.Name = "bnStart";
            this.bnStart.Size = new System.Drawing.Size(49, 23);
            this.bnStart.TabIndex = 3;
            this.bnStart.Text = "Start";
            this.bnStart.UseVisualStyleBackColor = true;
            this.bnStart.Click += new System.EventHandler(this.bnStart_Click);
            // 
            // tbFullStatus
            // 
            this.tbFullStatus.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbFullStatus.Location = new System.Drawing.Point(12, 362);
            this.tbFullStatus.Multiline = true;
            this.tbFullStatus.Name = "tbFullStatus";
            this.tbFullStatus.Size = new System.Drawing.Size(532, 126);
            this.tbFullStatus.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 95);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(88, 13);
            this.label2.TabIndex = 6;
            this.label2.Text = "connection string";
            // 
            // tbConnectionString
            // 
            this.tbConnectionString.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbConnectionString.Location = new System.Drawing.Point(12, 111);
            this.tbConnectionString.Multiline = true;
            this.tbConnectionString.Name = "tbConnectionString";
            this.tbConnectionString.Size = new System.Drawing.Size(532, 41);
            this.tbConnectionString.TabIndex = 5;
            this.tbConnectionString.TextChanged += new System.EventHandler(this.tbConnectionString_TextChanged);
            // 
            // bnSaveSettings
            // 
            this.bnSaveSettings.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.bnSaveSettings.Location = new System.Drawing.Point(455, 236);
            this.bnSaveSettings.Name = "bnSaveSettings";
            this.bnSaveSettings.Size = new System.Drawing.Size(89, 23);
            this.bnSaveSettings.TabIndex = 9;
            this.bnSaveSettings.Text = "Save settings";
            this.bnSaveSettings.UseVisualStyleBackColor = true;
            this.bnSaveSettings.Click += new System.EventHandler(this.bnSaveSettings_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(9, 155);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(100, 13);
            this.label3.TabIndex = 8;
            this.label3.Text = "Server service URL";
            // 
            // tbServerURL
            // 
            this.tbServerURL.Location = new System.Drawing.Point(15, 171);
            this.tbServerURL.Name = "tbServerURL";
            this.tbServerURL.Size = new System.Drawing.Size(313, 20);
            this.tbServerURL.TabIndex = 7;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 194);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(154, 13);
            this.label4.TabIndex = 11;
            this.label4.Text = "External compare files tool path";
            // 
            // tbCompareFilesPath
            // 
            this.tbCompareFilesPath.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbCompareFilesPath.Location = new System.Drawing.Point(12, 210);
            this.tbCompareFilesPath.Name = "tbCompareFilesPath";
            this.tbCompareFilesPath.Size = new System.Drawing.Size(313, 20);
            this.tbCompareFilesPath.TabIndex = 10;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(331, 155);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(134, 13);
            this.label5.TabIndex = 13;
            this.label5.Text = "Directory for temporary files";
            // 
            // tbTempDir
            // 
            this.tbTempDir.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbTempDir.Location = new System.Drawing.Point(331, 171);
            this.tbTempDir.Name = "tbTempDir";
            this.tbTempDir.Size = new System.Drawing.Size(213, 20);
            this.tbTempDir.TabIndex = 12;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(328, 194);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(114, 13);
            this.label6.TabIndex = 15;
            this.label6.Text = "Directory for Word files";
            // 
            // tbWordDir
            // 
            this.tbWordDir.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbWordDir.Location = new System.Drawing.Point(331, 210);
            this.tbWordDir.Name = "tbWordDir";
            this.tbWordDir.Size = new System.Drawing.Size(213, 20);
            this.tbWordDir.TabIndex = 14;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(331, 249);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(94, 13);
            this.label7.TabIndex = 17;
            this.label7.Text = "Edit text command";
            // 
            // tbEditCommand
            // 
            this.tbEditCommand.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbEditCommand.Location = new System.Drawing.Point(331, 265);
            this.tbEditCommand.Name = "tbEditCommand";
            this.tbEditCommand.Size = new System.Drawing.Size(213, 20);
            this.tbEditCommand.TabIndex = 16;
            // 
            // chUniqueNames
            // 
            this.chUniqueNames.AutoSize = true;
            this.chUniqueNames.Location = new System.Drawing.Point(12, 300);
            this.chUniqueNames.Name = "chUniqueNames";
            this.chUniqueNames.Size = new System.Drawing.Size(110, 17);
            this.chUniqueNames.TabIndex = 18;
            this.chUniqueNames.Text = "Unique file names";
            this.chUniqueNames.UseVisualStyleBackColor = true;
            // 
            // chDeleteAfterEdit
            // 
            this.chDeleteAfterEdit.AutoSize = true;
            this.chDeleteAfterEdit.Location = new System.Drawing.Point(139, 300);
            this.chDeleteAfterEdit.Name = "chDeleteAfterEdit";
            this.chDeleteAfterEdit.Size = new System.Drawing.Size(115, 17);
            this.chDeleteAfterEdit.TabIndex = 19;
            this.chDeleteAfterEdit.Text = "Delete after editing";
            this.chDeleteAfterEdit.UseVisualStyleBackColor = true;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(12, 249);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(104, 13);
            this.label8.TabIndex = 21;
            this.label8.Text = "After save command";
            // 
            // tbAfterSaveCommand
            // 
            this.tbAfterSaveCommand.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbAfterSaveCommand.Location = new System.Drawing.Point(12, 265);
            this.tbAfterSaveCommand.Name = "tbAfterSaveCommand";
            this.tbAfterSaveCommand.Size = new System.Drawing.Size(313, 20);
            this.tbAfterSaveCommand.TabIndex = 20;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(12, 320);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(127, 13);
            this.label9.TabIndex = 23;
            this.label9.Text = "Query execute procedure";
            // 
            // tbQueryExecProc
            // 
            this.tbQueryExecProc.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbQueryExecProc.Location = new System.Drawing.Point(12, 336);
            this.tbQueryExecProc.Name = "tbQueryExecProc";
            this.tbQueryExecProc.Size = new System.Drawing.Size(254, 20);
            this.tbQueryExecProc.TabIndex = 22;
            // 
            // tbToken
            // 
            this.tbToken.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbToken.Location = new System.Drawing.Point(272, 307);
            this.tbToken.Multiline = true;
            this.tbToken.Name = "tbToken";
            this.tbToken.Size = new System.Drawing.Size(272, 49);
            this.tbToken.TabIndex = 24;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(269, 288);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(57, 13);
            this.label10.TabIndex = 25;
            this.label10.Text = "user token";
            // 
            // bnWsConnect
            // 
            this.bnWsConnect.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.bnWsConnect.Location = new System.Drawing.Point(495, 61);
            this.bnWsConnect.Name = "bnWsConnect";
            this.bnWsConnect.Size = new System.Drawing.Size(49, 23);
            this.bnWsConnect.TabIndex = 26;
            this.bnWsConnect.Text = "WS";
            this.bnWsConnect.UseVisualStyleBackColor = false;
            this.bnWsConnect.Click += new System.EventHandler(this.bnWsConnect_Click);
            // 
            // tbWsUri
            // 
            this.tbWsUri.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tbWsUri.Location = new System.Drawing.Point(12, 63);
            this.tbWsUri.Name = "tbWsUri";
            this.tbWsUri.Size = new System.Drawing.Size(477, 20);
            this.tbWsUri.TabIndex = 27;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(560, 513);
            this.Controls.Add(this.tbWsUri);
            this.Controls.Add(this.bnWsConnect);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.tbToken);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.tbQueryExecProc);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.tbAfterSaveCommand);
            this.Controls.Add(this.chDeleteAfterEdit);
            this.Controls.Add(this.chUniqueNames);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.tbEditCommand);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.tbWordDir);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.tbTempDir);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.tbCompareFilesPath);
            this.Controls.Add(this.bnSaveSettings);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.tbServerURL);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.tbConnectionString);
            this.Controls.Add(this.tbFullStatus);
            this.Controls.Add(this.bnStart);
            this.Controls.Add(this.stStatus);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.tbUri);
            this.Name = "MainForm";
            this.Text = "DERSA client";
            this.Shown += new System.EventHandler(this.MainForm_Shown);
            this.stStatus.ResumeLayout(false);
            this.stStatus.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox tbUri;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ToolStripStatusLabel stLabel;
        private System.Windows.Forms.StatusStrip stStatus;
        private System.Windows.Forms.Button bnStart;
        private System.Windows.Forms.TextBox tbFullStatus;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox tbConnectionString;
        private System.Windows.Forms.Button bnSaveSettings;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox tbServerURL;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox tbCompareFilesPath;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox tbTempDir;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox tbWordDir;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox tbEditCommand;
        private System.Windows.Forms.CheckBox chUniqueNames;
        private System.Windows.Forms.CheckBox chDeleteAfterEdit;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox tbAfterSaveCommand;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox tbQueryExecProc;
        private System.Windows.Forms.TextBox tbToken;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Button bnWsConnect;
        private System.Windows.Forms.TextBox tbWsUri;
    }
}

