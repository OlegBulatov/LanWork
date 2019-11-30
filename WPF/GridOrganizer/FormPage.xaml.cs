using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using Windows.Foundation;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;

namespace GridOrganizer
{
    public class ObjectForm : GridObject
    {
        public string form { get; set; }
        public string type_name { get; set; }
        public string object_type { get; set; }
    }

    public partial class FormPage : Page
    {
        public FormPage()
        {
            this.InitializeComponent();
            this.DataContext = new XObjectCollection<ObjectForm>("FORM");
        }
    }
}
