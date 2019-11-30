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
    public class Module : GridObject
    {
        public string title { get; set; }
        public string form { get; set; }
    }

    public partial class ModulePage : Page
    {
        public ModulePage()
        {
            this.InitializeComponent();
            this.DataContext = new XObjectCollection<Module>("MODULE");
        }
    }
}
