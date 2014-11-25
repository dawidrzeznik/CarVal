using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace jess
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            File.Delete("fakty.clp");
            
            StreamWriter sw = new StreamWriter("fakty.clp");
            sw.WriteLine("(assert (carType(type " + typeCombo.Text + ")))");
            sw.WriteLine("(assert (carType(type " + sizeCombo.Text + ")))");
            sw.WriteLine("(assert (carType(type " + powerBox.Text + ")))");
            sw.WriteLine("(assert (carType(type " + economyBox.Text + ")))");
            sw.WriteLine("(assert (carType(type " + priceBox.Text + ")))");
            sw.WriteLine("(assert (carType(type " + stuffCombo.Text + ")))");

            sw.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("jess.bat ", "peugeot.clp");
            richTextBox1.Clear();
            string wyn = "wyniki.txt";
            string[] lines = System.IO.File.ReadAllLines(wyn);
            foreach (string line in lines)
            {
                richTextBox1.Text += line + Environment.NewLine;
            }
        }
    }
}
