using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Data;

namespace GridOrganizer
{

    class MODULE_Filter : FilterFormInitializer
    {
        public override List<FormControlStruct> formControls
        {
            get
            {
                return new List<FormControlStruct>
                {
                        new FormControlStruct("tbTitle", "Windows.UI.Xaml.Controls.TextBox, CSharpXamlForHtml5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", 40, 16, 240, 25, "{\"DataField\":\"title\",\"Predicate\":\"like\"}"),
                };
            }
        }

    }
}
