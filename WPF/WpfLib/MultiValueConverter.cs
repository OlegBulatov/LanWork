using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Globalization;
using System.Windows.Data;
using System.Reflection;


namespace WpfLib
{
    public class FilterController : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            string filterDescr = values[0] as string;
            object filterValue = values[1];
            object enabled = values[2];
            object model = values[3];
            object filterAltValue = null;
            if (values.Length > 4)
                filterAltValue = values[4];
            if (model != null)
            {
                MethodInfo mi = model.GetType().GetMethod("SetFilterParam");
                if (mi != null)
                    mi.Invoke(model, new object[] { filterDescr, filterValue, enabled, filterAltValue });
            }

            if (values.Length > 5 && values[5] != null && values[5].ToString().ToLower() == "true")//запрошен нестандартный результат (по умолчанию возвращается false)
            {
                return true;
            }
            return false;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class MultiValueTextConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            string one = values[0] as string;
            object two = values[1];
            if (!string.IsNullOrEmpty(one) && two != null)
            {
                return one + ":" + two.ToString();
            }
            return "Empty";
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class MultiValueObjectConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            
            string one = values[0] as string; 
            object two = values[1];
            if (!string.IsNullOrEmpty(one) && two != null)
            {
                if (two.GetType() == typeof(double))
                    two = Math.Round((double)two, 2);
                Tuple<string, string> result = new Tuple<string, string>(one, two.ToString());
                return result;
            }
            return null;
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
