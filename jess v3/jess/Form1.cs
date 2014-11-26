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

        public void info()
        {
            listBox1.Items.Clear();
            listBox1.Items.Add("Niepoprawne dane!");
            listBox1.Items.Add("Moc silnika 60-280 KM");
            listBox1.Items.Add("Cena 38000-180000 zł");
            listBox1.Items.Add("Spalanie 4-10 l/100km");
        }
        private void button1_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();

            if (typeCombo.Text.Trim().Length == 0 || sizeCombo.Text.Trim().Length == 0 || stuffCombo.Text.Trim().Length == 0)
            {
                info();
            }
            
            if (powerBox.Text.Trim().Length == 0 ||  Convert.ToDecimal(powerBox.Text) < 60 || Convert.ToDecimal(powerBox.Text) > 300)
            {
                info();
            }

            if (priceBox.Text.Trim().Length == 0 || Convert.ToDecimal(priceBox.Text) < 38000 || Convert.ToDecimal(priceBox.Text) > 180000)
            {
                info();
            }
                
            
            File.Delete("fakty.clp");
            //File.Delete("wyniki.txt");
            StreamWriter sw = new StreamWriter("fakty.clp");
            sw.WriteLine("(assert (carType(type " + typeCombo.Text + ")))");
            sw.WriteLine("(assert (carSize(size " + sizeCombo.Text + ")))");
            sw.WriteLine("(assert (enginePower(power " + powerBox.Text + ")))");
            sw.WriteLine("(assert (engineEconomy(economy " + economyBox.Text + ")))");
            sw.WriteLine("(assert (carPrice(price " + priceBox.Text + ")))");
            sw.WriteLine("(assert (carEquipment(equipment " + stuffCombo.Text + ")))");

            sw.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //System.IO.File.CreateText("wyniki.txt");
            System.Diagnostics.Process.Start("bin\\jess.bat ", "peugeot.clp");

          
            
        }

        private void listBox1_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            try
            {
                int index = this.listBox1.IndexFromPoint(e.Location);


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
                            Strona.Add(line.Substring(i + 1));
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
            catch (Exception)
            { }
          
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            
            string wyn = "wyniki.txt";
            string[] lines = System.IO.File.ReadAllLines(wyn);


            int flaga = -1;
            ArrayList Samochody = new ArrayList();
            foreach (string line in lines)
            {


                flaga++;
                if (flaga > 1)
                {
                    Samochody.Add(line);
                    flaga = 0;
                }
            }



            for (int i = 0; i < Samochody.Count; i++)
            {
                //  System.Console.WriteLine(Samochody[i]);
                listBox1.Items.Add(Samochody[i]);
            }
        }
    }
}