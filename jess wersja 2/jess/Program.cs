using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Collections;
using System.IO;

namespace jess
{
    static class Program
    {
        /// <summary>
        
        /// </summary>
        [STAThread]
        static void Main()
        {
            string path = Application.ExecutablePath;
            path = path.Remove(path.LastIndexOf(@"\"));

            Directory.SetCurrentDirectory(path + @"\data\bin");
            
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
        }
    }
}
