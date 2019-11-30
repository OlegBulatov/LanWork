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
using DIOS.Web.XamlExtensions;

namespace GridOrganizer
{
    public partial class HtmlFilterPage : Page
    {
        public HtmlFilterPage()
        {
            this.InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.HtmlFilter1.Value = (this.DataContext as ICollectionOwner).ClassName;
            MessageBox.Show(this.HtmlFilter1.Value.ToString());
        }
    }
}
