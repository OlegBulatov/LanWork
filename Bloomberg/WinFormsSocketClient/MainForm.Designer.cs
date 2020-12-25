namespace WinFormsSocketClient
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
            this.tbHost = new System.Windows.Forms.TextBox();
            this.tbPort = new System.Windows.Forms.TextBox();
            this.tbSendText = new System.Windows.Forms.TextBox();
            this.tbReceiveText = new System.Windows.Forms.TextBox();
            this.bnDisconnect = new System.Windows.Forms.Button();
            this.bnConnect = new System.Windows.Forms.Button();
            this.bnSend = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.tbLastError = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.lbState = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // tbHost
            // 
            this.tbHost.Location = new System.Drawing.Point(22, 27);
            this.tbHost.Name = "tbHost";
            this.tbHost.Size = new System.Drawing.Size(252, 20);
            this.tbHost.TabIndex = 0;
            this.tbHost.Text = "drpo-bulatov";
            // 
            // tbPort
            // 
            this.tbPort.Location = new System.Drawing.Point(280, 27);
            this.tbPort.Name = "tbPort";
            this.tbPort.Size = new System.Drawing.Size(60, 20);
            this.tbPort.TabIndex = 1;
            this.tbPort.Text = "8080";
            // 
            // tbSendText
            // 
            this.tbSendText.Location = new System.Drawing.Point(22, 71);
            this.tbSendText.Multiline = true;
            this.tbSendText.Name = "tbSendText";
            this.tbSendText.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbSendText.Size = new System.Drawing.Size(399, 101);
            this.tbSendText.TabIndex = 2;
            // 
            // tbReceiveText
            // 
            this.tbReceiveText.Location = new System.Drawing.Point(22, 197);
            this.tbReceiveText.Multiline = true;
            this.tbReceiveText.Name = "tbReceiveText";
            this.tbReceiveText.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbReceiveText.Size = new System.Drawing.Size(473, 170);
            this.tbReceiveText.TabIndex = 3;
            // 
            // bnDisconnect
            // 
            this.bnDisconnect.Enabled = false;
            this.bnDisconnect.Location = new System.Drawing.Point(427, 27);
            this.bnDisconnect.Name = "bnDisconnect";
            this.bnDisconnect.Size = new System.Drawing.Size(75, 23);
            this.bnDisconnect.TabIndex = 4;
            this.bnDisconnect.Text = "Disconnect";
            this.bnDisconnect.UseVisualStyleBackColor = true;
            this.bnDisconnect.Click += new System.EventHandler(this.bnDisconnect_Click);
            // 
            // bnConnect
            // 
            this.bnConnect.Location = new System.Drawing.Point(346, 27);
            this.bnConnect.Name = "bnConnect";
            this.bnConnect.Size = new System.Drawing.Size(75, 23);
            this.bnConnect.TabIndex = 5;
            this.bnConnect.Text = "Connect";
            this.bnConnect.UseVisualStyleBackColor = true;
            this.bnConnect.Click += new System.EventHandler(this.bnConnect_Click);
            // 
            // bnSend
            // 
            this.bnSend.Enabled = false;
            this.bnSend.Location = new System.Drawing.Point(427, 104);
            this.bnSend.Name = "bnSend";
            this.bnSend.Size = new System.Drawing.Size(75, 23);
            this.bnSend.TabIndex = 6;
            this.bnSend.Text = "Send";
            this.bnSend.UseVisualStyleBackColor = true;
            this.bnSend.Click += new System.EventHandler(this.bnSend_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(19, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(27, 13);
            this.label1.TabIndex = 7;
            this.label1.Text = "host";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(277, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(25, 13);
            this.label2.TabIndex = 8;
            this.label2.Text = "port";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(19, 55);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(62, 13);
            this.label3.TabIndex = 9;
            this.label3.Text = "text to send";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(19, 181);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(68, 13);
            this.label4.TabIndex = 10;
            this.label4.Text = "received text";
            // 
            // tbLastError
            // 
            this.tbLastError.Location = new System.Drawing.Point(22, 393);
            this.tbLastError.Multiline = true;
            this.tbLastError.Name = "tbLastError";
            this.tbLastError.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.tbLastError.Size = new System.Drawing.Size(473, 45);
            this.tbLastError.TabIndex = 11;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(19, 377);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(47, 13);
            this.label5.TabIndex = 12;
            this.label5.Text = "last error";
            // 
            // lbState
            // 
            this.lbState.AutoSize = true;
            this.lbState.Location = new System.Drawing.Point(427, 74);
            this.lbState.Name = "lbState";
            this.lbState.Size = new System.Drawing.Size(76, 13);
            this.lbState.TabIndex = 13;
            this.lbState.Text = "not connected";
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(507, 450);
            this.Controls.Add(this.lbState);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.tbLastError);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.bnSend);
            this.Controls.Add(this.bnConnect);
            this.Controls.Add(this.bnDisconnect);
            this.Controls.Add(this.tbReceiveText);
            this.Controls.Add(this.tbSendText);
            this.Controls.Add(this.tbPort);
            this.Controls.Add(this.tbHost);
            this.Name = "MainForm";
            this.Text = "Socket client";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox tbHost;
        private System.Windows.Forms.TextBox tbPort;
        private System.Windows.Forms.TextBox tbSendText;
        private System.Windows.Forms.TextBox tbReceiveText;
        private System.Windows.Forms.Button bnDisconnect;
        private System.Windows.Forms.Button bnConnect;
        private System.Windows.Forms.Button bnSend;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox tbLastError;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label lbState;
    }
}

