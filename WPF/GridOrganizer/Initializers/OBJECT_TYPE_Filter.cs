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

    class OBJECT_TYPE_Filter : FilterFormInitializer
    {
        public override List<FormControlStruct> formControls
        {
            get
            {
                return new List<FormControlStruct>
                {
                        new FormControlStruct("tbName", "Windows.UI.Xaml.Controls.TextBox, CSharpXamlForHtml5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", 100, 16, 240, 25, "{\"DataField\":\"name\",\"Predicate\":\"like\"}"),
                        new FormControlStruct("tbClassName", "Windows.UI.Xaml.Controls.TextBox, CSharpXamlForHtml5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", 100, 50, 240, 25, "{\"DataField\":\"class_name\",\"Predicate\":\"like\"}"),
                        new FormControlStruct("chClassName", "Windows.UI.Xaml.Controls.CheckBox, CSharpXamlForHtml5, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", 5, 50, 60, 25, "{\"DataField\":\"class_name\",\"Predicate\":\"like\"}")
//                                <CheckBox Name="chName" VerticalAlignment="Top" HorizontalAlignment="Left" Margin="340,16,0,0" Width="60" Content="название" />

                };
            }
        }

    }
}
