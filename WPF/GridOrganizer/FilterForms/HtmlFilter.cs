using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CSHTML5;
using CSHTML5.Native.Html.Controls;

namespace GridOrganizer
{
    public class HtmlFilter : HtmlPresenter
    {
        private string _value = "testvalue";

        public HtmlFilter()
        {
            this.Html = @"<input type=""text"" pattern=""[0-9]*"">";

            this.Loaded += NumericTextBox_Loaded;
        }

        public string Value
        {
            get
            {
                if (this.DomElement != null) //Note: the DOM element is null if the control has not been added to the visual tree yet.
                {
                    int valueInt;
                    string valueString = Interop.ExecuteJavaScript("$0.value", this.DomElement).ToString();
                    _value = valueString;
                    //if (Int32.TryParse(valueString, out valueInt))
                    //{
                    //    _value = valueInt;
                    //}
                }
                return _value;
            }
            set
            {
                _value = value;

                if (this.DomElement != null) //Note: the DOM element is null if the control has not been added to the visual tree yet.
                    //Interop.ExecuteJavaScript("$0.value = $1", this.DomElement, _value);
                    Interop.ExecuteJavaScript("window.open(GetReportUrl($0))", _value);
            }
        }

        void NumericTextBox_Loaded(object sender, Windows.UI.Xaml.RoutedEventArgs e)
        {
            // Here, the control has been added to the visual tree, so the DOM element exists. We set the initial value:
            Interop.ExecuteJavaScript("$0.value = $1", this.DomElement, _value);
        }
    }

}
