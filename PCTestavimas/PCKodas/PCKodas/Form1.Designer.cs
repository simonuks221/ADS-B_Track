namespace PCKodas
{
    partial class Form1
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
            System.Windows.Forms.DataVisualization.Charting.ChartArea chartArea1 = new System.Windows.Forms.DataVisualization.Charting.ChartArea();
            System.Windows.Forms.DataVisualization.Charting.Legend legend1 = new System.Windows.Forms.DataVisualization.Charting.Legend();
            System.Windows.Forms.DataVisualization.Charting.Series series1 = new System.Windows.Forms.DataVisualization.Charting.Series();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.ConnectionStatusLabel = new System.Windows.Forms.Label();
            this.eventLog1 = new System.Diagnostics.EventLog();
            this.ConnectButton = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.VoltageChart = new System.Windows.Forms.DataVisualization.Charting.Chart();
            this.SaveToFileButton = new System.Windows.Forms.Button();
            this.DataAmountLabel = new System.Windows.Forms.Label();
            this.UpdateChartButton = new System.Windows.Forms.CheckBox();
            ((System.ComponentModel.ISupportInitialize)(this.eventLog1)).BeginInit();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.VoltageChart)).BeginInit();
            this.SuspendLayout();
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(131, 25);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(121, 24);
            this.comboBox1.TabIndex = 0;
            // 
            // ConnectionStatusLabel
            // 
            this.ConnectionStatusLabel.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.ConnectionStatusLabel.AutoSize = true;
            this.ConnectionStatusLabel.Location = new System.Drawing.Point(295, 31);
            this.ConnectionStatusLabel.Name = "ConnectionStatusLabel";
            this.ConnectionStatusLabel.Size = new System.Drawing.Size(67, 16);
            this.ConnectionStatusLabel.TabIndex = 1;
            this.ConnectionStatusLabel.Text = "Status text";
            // 
            // eventLog1
            // 
            this.eventLog1.SynchronizingObject = this;
            // 
            // ConnectButton
            // 
            this.ConnectButton.Location = new System.Drawing.Point(6, 25);
            this.ConnectButton.Name = "ConnectButton";
            this.ConnectButton.Size = new System.Drawing.Size(99, 28);
            this.ConnectButton.TabIndex = 5;
            this.ConnectButton.Text = "Connect";
            this.ConnectButton.UseVisualStyleBackColor = true;
            this.ConnectButton.Click += new System.EventHandler(this.ConnectButton_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox2.Controls.Add(this.ConnectButton);
            this.groupBox2.Controls.Add(this.comboBox1);
            this.groupBox2.Location = new System.Drawing.Point(527, 6);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(258, 72);
            this.groupBox2.TabIndex = 6;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Connect to COM port";
            // 
            // VoltageChart
            // 
            this.VoltageChart.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            chartArea1.Name = "ChartArea1";
            this.VoltageChart.ChartAreas.Add(chartArea1);
            legend1.Name = "Legend1";
            this.VoltageChart.Legends.Add(legend1);
            this.VoltageChart.Location = new System.Drawing.Point(45, 84);
            this.VoltageChart.Name = "VoltageChart";
            series1.ChartArea = "ChartArea1";
            series1.ChartType = System.Windows.Forms.DataVisualization.Charting.SeriesChartType.Line;
            series1.Legend = "Legend1";
            series1.Name = "Įtampa";
            this.VoltageChart.Series.Add(series1);
            this.VoltageChart.Size = new System.Drawing.Size(722, 300);
            this.VoltageChart.TabIndex = 8;
            this.VoltageChart.Text = "chart1";
            // 
            // SaveToFileButton
            // 
            this.SaveToFileButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.SaveToFileButton.Location = new System.Drawing.Point(643, 390);
            this.SaveToFileButton.Name = "SaveToFileButton";
            this.SaveToFileButton.Size = new System.Drawing.Size(124, 40);
            this.SaveToFileButton.TabIndex = 9;
            this.SaveToFileButton.Text = "Save to file";
            this.SaveToFileButton.UseVisualStyleBackColor = true;
            this.SaveToFileButton.Click += new System.EventHandler(this.SaveToFileButton_Click);
            // 
            // DataAmountLabel
            // 
            this.DataAmountLabel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.DataAmountLabel.AutoSize = true;
            this.DataAmountLabel.Location = new System.Drawing.Point(549, 397);
            this.DataAmountLabel.Name = "DataAmountLabel";
            this.DataAmountLabel.Size = new System.Drawing.Size(44, 16);
            this.DataAmountLabel.TabIndex = 10;
            this.DataAmountLabel.Text = "label1";
            // 
            // UpdateChartButton
            // 
            this.UpdateChartButton.AutoSize = true;
            this.UpdateChartButton.Dock = System.Windows.Forms.DockStyle.Top;
            this.UpdateChartButton.Location = new System.Drawing.Point(0, 0);
            this.UpdateChartButton.Name = "UpdateChartButton";
            this.UpdateChartButton.Size = new System.Drawing.Size(800, 20);
            this.UpdateChartButton.TabIndex = 11;
            this.UpdateChartButton.Text = "Update chart";
            this.UpdateChartButton.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.UpdateChartButton);
            this.Controls.Add(this.DataAmountLabel);
            this.Controls.Add(this.SaveToFileButton);
            this.Controls.Add(this.VoltageChart);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.ConnectionStatusLabel);
            this.Name = "Form1";
            this.Text = "ADS-B receiver";
            ((System.ComponentModel.ISupportInitialize)(this.eventLog1)).EndInit();
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.VoltageChart)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Label ConnectionStatusLabel;
        private System.Diagnostics.EventLog eventLog1;
        private System.Windows.Forms.Button ConnectButton;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DataVisualization.Charting.Chart VoltageChart;
        private System.Windows.Forms.Button SaveToFileButton;
        private System.Windows.Forms.Label DataAmountLabel;
        private System.Windows.Forms.CheckBox UpdateChartButton;
    }
}

