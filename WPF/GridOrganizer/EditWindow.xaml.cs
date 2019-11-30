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
    public partial class EditWindow : ChildWindow
    {
        public EditWindow()
        {
            InitializeComponent();
        }

        public EditWindow(string formTypeName): this()
        {
            if (string.IsNullOrEmpty(formTypeName))
                return;
            Type formType = Type.GetType(formTypeName);// this.GetType().Namespace + "." + className);
            if (formType != null)
            {
                editFrame.Content = Activator.CreateInstance(formType);
            }
        }

        private void OKButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = false;
        }
    }
}

