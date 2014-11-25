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
using System.Collections;

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

            string wyn = "wyniki.txt";
            string[] lines = System.IO.File.ReadAllLines(wyn);

            int flaga = -1;
            ArrayList Samochody = new ArrayList();
            foreach (string line in lines)
            {
 

                flaga++;
                if(flaga>1)
                {
                    Samochody.Add(line);
                    flaga =0; 
                }
            }



            for (int i = 0; i < Samochody.Count; i++)
            {
                //  System.Console.WriteLine(Samochody[i]);
                listBox1.Items.Add(Samochody[i]);
            }
            
        }

        private void listBox1_DoubleClick(object sender, System.EventArgs e)
        {
            string wyn = "stronki_auta.txt";
            string[] lines = System.IO.File.ReadAllLines(wyn);
            ArrayList Strona = new ArrayList();
            ArrayList Samochod = new ArrayList();
            int dlugosc;

            foreach (string line in lines)
            {
                dlugosc = line.Length;

                for (int i = 0; i < dlugosc; i++)
                {
                    if (line[i] == ';')
                    {                     
                            Samochod.Add(line.Substring(0, i));
                           Strona.Add(line.Substring(i+1));                     
                    }
                }
            }


            String samochod = listBox1.SelectedItem.ToString();

            for (int i = 0; i < Strona.Count; i++)
            {
                if (samochod == (String)Samochod[i])
                {
                    System.Diagnostics.Process.Start((String)Strona[i]);
                }
                else
                {
                    System.Console.WriteLine("Brak stronki w bazie!");
                }
            }
           
                    
          
        }
    }
}
