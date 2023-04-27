using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Threading;
using System.IO.Ports;
using System.Diagnostics;
using System.IO;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using System.Windows.Forms.VisualStyles;
using System.Windows.Forms.DataVisualization.Charting;

namespace PCKodas
{
    public partial class Form1 : Form
    {
        private String[] ports;
        private SerialPort port;

        string connectedPort;

        public bool isConnected;

        int max_chart_elements = 1000;
        int received_data_length = 0;

        List<int> received_data = new List<int>();

        //Chartai
        //https://learn.microsoft.com/en-us/previous-versions/dd456769(v=vs.140)?redirectedfrom=MSDN
        //https://learn.microsoft.com/en-us/previous-versions/dd489233(v=vs.140)?redirectedfrom=MSDN
        //https://learn.microsoft.com/de-de/dotnet/api/system.windows.forms.datavisualization.charting.chart?redirectedfrom=MSDN&view=netframework-4.8.1

        public Form1()
        {
            InitializeComponent();
            CheckConnectivity();
        }

        void ChangeDisplayedInfo(string connectionStatusTest = null, String[] ports = null) //Changes the main label and port box items
        {
            ConnectionStatusLabel.Text = connectionStatusTest;

            if (ports != null)
            {
                comboBox1.Items.Clear();
                foreach (string port in ports)
                {
                    comboBox1.Items.Add(port);
                }

                if (ports.Length != 0)
                {
                    comboBox1.SelectedItem = ports[0];
                }
            }
            else
            {
                comboBox1.Items.Clear();
            }
        }
        private void CheckConnectivity()
        {
            ChangeDisplayedInfo("Waiting for connection");
            GetAvailableComPorts();
        }

        void GetAvailableComPorts()
        {
            try
            {
                ports = SerialPort.GetPortNames();
                if (ports.Length > 0)
                {
                    ChangeDisplayedInfo(ports: ports);
                    foreach (string portName in ports)
                    {
                        if (ConnectController(portName))
                        {
                            break;
                        }
                    }
                }
                else
                {
                    ChangeDisplayedInfo("No COM ports available");
                    isConnected = false;
                }
            }
            catch
            {
                ChangeDisplayedInfo("No COM ports available");
                isConnected = false;
            }
        }

        private bool ConnectController(string selectedPort)
        {
            if (!isConnected)
            {
                try
                {
                    port = new SerialPort(selectedPort, 115200, Parity.None, 8, StopBits.One);
                    port.Open();
                    port.DiscardInBuffer();
                    port.DataReceived += new SerialDataReceivedEventHandler(Port_DataReceived);
                    isConnected = true;
                    connectedPort = selectedPort;
                    ChangeDisplayedInfo("Connected to port " + selectedPort);
                    return true;
                }
                catch
                {
                    isConnected = false;
                    ChangeDisplayedInfo("Failed to connect");
                    return false;
                }
            }
            return false;
        }

        private void Port_DataReceived(object sender, SerialDataReceivedEventArgs e) //Receive USB data
        {
            int count = port.BytesToRead;
            byte[] ByteArray = new byte[count];
            port.Read(ByteArray, 0, count);
            //Debug.WriteLine("Got data length: " + ByteArray.Length);

            if (ByteArray.Length > 0) {
                for (int i = 0; i < ByteArray.Length; i++)
                {
                    Update_Chart(ByteArray[i]);
                    if (ByteArray[i] != 0)
                    {
                        //Debug.WriteLine("ADded diff: " + ByteArray[i]);
                    }
                    //Debug.WriteLine("Added: " + ByteArray[i]);
                }
            }
        }

        private void ConnectButton_Click(object sender, EventArgs e)
        {
            ConnectController(comboBox1.GetItemText(comboBox1.SelectedItem));
            for (int i = 0; i < 20; i++)
            {
                Update_Chart(i);
            }
        }

        int last_MSB = 0;
        int full_16bit = 0;
        void Update_Chart(int new_value)
        {
            if(new_value <= 4) //Gautas MSB, pirmas baitas
            {
                last_MSB = new_value;
                Debug.WriteLine(last_MSB);
            }
            else //Gautas LSB, sudedam LSB ir MSB
            {
                full_16bit = last_MSB * 256 + new_value; //MSB i kaire per 8, max gali buti 1024 vertes
                received_data_length++;
                received_data.Add(full_16bit);

                this.Invoke(new MethodInvoker(delegate ()
                {
                    //Access controls

                    DataAmountLabel.Text = received_data_length.ToString();

                    if (UpdateChartButton.Checked)
                    {
                        if (VoltageChart.Series[0].Points.Count == max_chart_elements) //Only leave some visible
                        {
                            VoltageChart.Series[0].Points.RemoveAt(0);
                        }
                        VoltageChart.Series[0].Points.AddY(new_value);
                        VoltageChart.Update();
                    }
                    else
                    {

                    }
                }));
            }
        }

        private void SaveToFileButton_Click(object sender, EventArgs e)
        {
            TextWriter txt = new StreamWriter(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "received_data.txt"));
            foreach (int d in received_data)
            {
                txt.Write(d.ToString() + "\n");
            }
            txt.Close();
        }
/*
        private void ConfigButton_Click(object sender, EventArgs e)
        {
            if(ConfigTextBox.Text.Length > 0)
            {
                try
                {
                    int textValue = Int32.Parse(ConfigTextBox.Text);
                    byte[] intBytes = BitConverter.GetBytes(100);
                    byte[] sendByte = new byte[3];
                    sendByte[0] = 0x01;
                    sendByte[1] = (byte)((textValue >> 0) & 0xFF);
                    sendByte[2] = (byte)((textValue >> 8) & 0xFF);
                    
                    port.Write(sendByte, 0, 3);
                }
                catch (Exception ee)
                {
                    ConfigTextBox.Text = "";
                }
            }
        }
        */
    }
}
