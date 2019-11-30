using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfLib
{
    public class ColorSetter
    {
        private bool colorIsOn;
        public bool ColorIsOn
        {
            get
            {
                return colorIsOn;
            }
            set
            {
                colorIsOn = value;
            }
        }
    }
}
