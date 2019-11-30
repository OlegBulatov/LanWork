using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Globalization;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Data;
using System.Reflection;
using CSHTML5.Extensions.Json;


namespace DIOS.Web.XamlExtensions
{
    public interface IFilterControlled
    {
        FilterController FilterController { get; }
        void Refresh();
        void SetParent(ICollectionOwner parentCollection);
    }
    public class FilterParamCollection
    {
        public FilterParam[] GetParamsArray()
        {
            FilterParam[] array = new FilterParam[this.filterParams.Count];
            int i = 0;
            foreach(Tuple<string , string> key in this.filterParams.Keys)
            {
                array[i++] = this.filterParams[key];
            }
            return array;
        }
        private Dictionary<Tuple<string, string>, FilterParam> filterParams = new Dictionary<Tuple<string, string>, FilterParam>();
        public void Add(FilterParam filterParam)
        {
            filterParams.Add(new Tuple<string, string>(filterParam.ControlName, filterParam.Name), filterParam);
        }
        public void Add(string _controlName, string _name, object _value, string _predicate)
        {
            Add(new FilterParam(_controlName, _name, _value, _predicate));
        }
        public void Remove(string _control_name, string _name)
        {
            Tuple<string, string> key = new Tuple<string, string>(_control_name, _name);
            filterParams.Remove(key);
        }
        public void Remove(FilterParam param)
        {
            Tuple<string, string> key = new Tuple<string, string>(param.ControlName, param.Name);
            filterParams.Remove(key);
        }

        public FilterParam this[string name]
        {
            get
            {
                if (!name.Contains(":"))
                    return null;
                string[] nameparts = name.Split(':');
                Tuple<string, string> key = new Tuple<string, string>(nameparts[0], nameparts[1]);
                return filterParams[key];
            }
        }
    }

    public class FilterParam
    {
        private string _controlName;
        public string ControlName
        {
            get
            {
                return _controlName;
            }
        }
        private string _name;
        public string Name
        {
            get
            {
                return _name;
            }
        }
        private string _predicate;
        public string Predicate
        {
            get
            {
                return _predicate;
            }
        }
        private object _value;
        public object Value
        {
            get
            {
                return _value;
            }
            set
            {
                _value = value;
            }
        }
        public FilterParam(string controlName, string name, object value, string predicate)
        {
            this._controlName = controlName;
            this._name = name;
            this._value = value;
            this._predicate = predicate;
        }
    }

    public class FilterStruct
    {
        private string controlName = "";
        public string ControlName 
        {
            get
            {
                return controlName;
            }
            set
            {
                controlName = value;
            }
        }
        public string DataField { get; set; }
        public string Predicate { get; set; }
        public string DataProperty { get; set; }
    }


    public class FilterController
    {
        private FilterParamCollection filterParams = new FilterParamCollection();
        public FilterParamCollection FilterParams
        {
            get
            {
                return this.filterParams;
            }
        }
        //public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        //{
        //    string filterDescr = values[0] as string;
        //    object filterValue = values[1];
        //    object enabled = values[2];
        //    object model = values[3];
        //    object filterAltValue = null;
        //    if (values.Length > 4)
        //        filterAltValue = values[4];
        //    if (model != null)
        //    {
        //        MethodInfo mi = model.GetType().GetMethod("SetFilterParam");
        //        if (mi != null)
        //            mi.Invoke(model, new object[] { filterDescr, filterValue, enabled, filterAltValue });
        //    }

        //    if (values.Length > 5 && values[5] != null && values[5].ToString().ToLower() == "true")//запрошен нестандартный результат (по умолчанию возвращается false)
        //    {
        //        return true;
        //    }
        //    return false;
        //}


        public void SetFilterParam(string controlName, string dataField, string predicate, object value, bool switchOn)
        {
            if (predicate == "in")
            {
                FilterParam Param = FilterParams[dataField];
                if (Param == null)
                {
                    if (switchOn)
                        FilterParams.Add(controlName, dataField, new object[] { value }, "in");
                }
                else
                {
                    object[] newValArray = new object[] { };
                    object[] currentParamValuesArray = (object[])Param.Value;
                    bool paramContainsValue = false;
                    for (int i = 0; i < currentParamValuesArray.Length; i++)
                    {
                        if (currentParamValuesArray[i].Equals(value))
                        {
                            paramContainsValue = true;
                            break;
                        }
                    }
                    if (switchOn)
                    {
                        if (!paramContainsValue)//добавить в существующий массив
                        {
                            newValArray = new object[currentParamValuesArray.Length + 1];
                            for (int i = 0; i < currentParamValuesArray.Length; i++)
                            {
                                newValArray[i] = currentParamValuesArray[i];
                            }
                            newValArray[currentParamValuesArray.Length] = value;
                        }
                    }
                    else
                    {
                        if (paramContainsValue)//убрать из существующего массива
                        {
                            newValArray = new object[currentParamValuesArray.Length - 1];
                            int j = 0;
                            for (int i = 0; i < currentParamValuesArray.Length; i++)
                            {
                                if (currentParamValuesArray[i].Equals(value))
                                    continue;
                                newValArray[j++] = currentParamValuesArray[i];
                            }
                        }
                    }
                    if (newValArray.Length < 1)
                        FilterParams.Remove(Param);
                    else
                        Param.Value = newValArray;
                }
                return;
            }
            FilterParams.Remove(controlName, dataField);
            if (switchOn)
            {
                FilterParams.Add(controlName, dataField, value, predicate);
            }
        }

    }

    public class MultiValueTextConverter //: IMultiValueConverter
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

    public class MultiValueObjectConverter //: IMultiValueConverter
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
