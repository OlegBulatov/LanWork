namespace Dersa.SqlClient
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
            this.tbError = new System.Windows.Forms.TextBox();
            this.stStatus.SuspendLayout();
            this.SuspendLayout();
            // 
            // tbUri
            // 
            this.tbUri.Location = new System.Drawing.Point(12, 27);
            this.tbUri.Name = "tbUri";
            this.tbUri.Size = new System.Drawing.Size(254, 20);
            this.tbUri.TabIndex = 0;
            this.tbUri.Text = "http://localhost:11433";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(103, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "WCF server address";
            // 
            // stStatus
            // 
            this.stStatus.GripStyle = System.Windows.Forms.ToolStripGripStyle.Visible;
            this.stStatus.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.stLabel});
            this.stStatus.Location = new System.Drawing.Point(0, 227);
            this.stStatus.Name = "stStatus";
            this.stStatus.ShowItemToolTips = true;
            this.stStatus.Size = new System.Drawing.Size(343, 22);
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
            this.bnStart.Location = new System.Drawing.Point(272, 25);
            this.bnStart.Name = "bnStart";
            this.bnStart.Size = new System.Drawing.Size(49, 23);
            this.bnStart.TabIndex = 3;
            this.bnStart.Text = "Start";
            this.bnStart.UseVisualStyleBackColor = true;
            this.bnStart.Click += new System.EventHandler(this.button1_Click);
            // 
            // tbError
            // 
            this.tbError.Location = new System.Drawing.Point(15, 65);
            this.tbError.Multiline = true;
            this.tbError.Name = "tbError";
            this.tbError.Size = new System.Drawing.Size(306, 148);
            this.tbError.TabIndex = 4;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(343, 249);
            this.Controls.Add(this.tbError);
            this.Controls.Add(this.bnStart);
            this.Controls.Add(this.stStatus);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.tbUri);
            this.Name = "MainForm";
            this.Text = "DERSA SQL client";
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
        private System.Windows.Forms.TextBox tbError;
    }
}

