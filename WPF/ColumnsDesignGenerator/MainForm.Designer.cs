namespace ColumnsDesignGenerator
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
            this.tbResult = new System.Windows.Forms.TextBox();
            this.bnGetModel = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // tbResult
            // 
            this.tbResult.Location = new System.Drawing.Point(12, 12);
            this.tbResult.Multiline = true;
            this.tbResult.Name = "tbResult";
            this.tbResult.Size = new System.Drawing.Size(776, 380);
            this.tbResult.TabIndex = 0;
            // 
            // bnGetModel
            // 
            this.bnGetModel.Location = new System.Drawing.Point(12, 415);
            this.bnGetModel.Name = "bnGetModel";
            this.bnGetModel.Size = new System.Drawing.Size(75, 23);
            this.bnGetModel.TabIndex = 1;
            this.bnGetModel.Text = "Get model";
            this.bnGetModel.UseVisualStyleBackColor = true;
            this.bnGetModel.Click += new System.EventHandler(this.bnGetModel_Click);
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.bnGetModel);
            this.Controls.Add(this.tbResult);
            this.Name = "MainForm";
            this.Text = "Generator";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox tbResult;
        private System.Windows.Forms.Button bnGetModel;
    }
}

