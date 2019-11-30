using System;
using System.IO;
using System.ComponentModel;
using System.Collections.ObjectModel;
using Newtonsoft.Json;
using System.Data;
using System.Collections.Generic;

namespace WpfDemoApp.ViewModels
{

    public class UserSettings
    {
        private string _fileContents;
        private string _fileName;
        private string _className;
        public string ClassName
        {
            get
            {
                return _className;
            }
            set
            {
                _className = value;
            }
        }
        public Dictionary<string, string> columnWidthValues;
        public Dictionary<string, string> columnColorValues;
        public UserSettings() { }
        public UserSettings(string fileName, string className)
        {
            _fileName = fileName;
            _className = className;
            Load();
        }

        public string Save()
        {
            try
            {
                var fileSettings = JsonConvert.DeserializeObject<List<UserSettings>>(_fileContents);
                if (fileSettings == null)
                    fileSettings = new List<UserSettings>();
                foreach (UserSettings s in fileSettings)
                {
                    if (s.ClassName == this.ClassName)
                    {
                        fileSettings.Remove(s);
                        break;
                    }
                }
                fileSettings.Add(this);
                using (StreamWriter SWJson = File.CreateText(_fileName))
                {
                    SWJson.Write(JsonConvert.SerializeObject(fileSettings));
                    SWJson.Flush();
                    SWJson.Close();
                }
                return "";
            }
            catch (Exception exc)
            {
                return exc.Message;
            }
        }

        public void Load()
        {
            if (!File.Exists(_fileName))
            {
                var F = File.CreateText(_fileName);
                F.Flush();
                F.Close();
            }
            var FS = File.OpenRead(_fileName);
            byte[] _buffer = new byte[FS.Length];
            try
            {
                FS.Read(_buffer, 0, _buffer.Length);
            }
            finally
            {
                FS.Flush();
                FS.Close();
            }
            _fileContents = System.Text.Encoding.UTF8.GetString(_buffer);
            var fileSettings = JsonConvert.DeserializeObject<List<UserSettings>>(_fileContents);

            this.columnColorValues = new Dictionary<string, string>();
            this.columnWidthValues = new Dictionary<string, string>();
            if (fileSettings != null)
            {
                foreach (UserSettings s in fileSettings)
                {
                    if (s.ClassName == this.ClassName)
                    {
                        this.columnColorValues = s.columnColorValues;
                        this.columnWidthValues = s.columnWidthValues;
                        break;
                    }
                }
            }
        }
    }

    public class DemoViewModel : INotifyPropertyChanged
    {
        private UserSettings _userSettings = null;
        public UserSettings userSettings
        {
            get
            {
                if(_userSettings == null)
                    _userSettings = new UserSettings(AppDomain.CurrentDomain.BaseDirectory + "user_settings.json", ClassName);
                return _userSettings;
            }
        }
        private string _className;
        public string ClassName
        {
            get
            {
                return _className;
            }
            set
            {
                if(value != _className)
                    _userSettings = new UserSettings(AppDomain.CurrentDomain.BaseDirectory + "user_settings.json", value);
                _className = value;
                OnPropertyChanged("ClassName");
            }
        }
        private string demoJson;
        public ICollectionView DemoView;
        public ObservableCollection<object> DemoData { get; set; }
        private bool colorIsOn = false;
        public bool ColorIsOn {
            get
            {
                return colorIsOn;
            }
            set
            {
                colorIsOn = value;
                OnPropertyChanged("ColorIsOn");
            }
        }
        private object _selectedObject;
        public object SelectedObject
        {
            get
            {
                return _selectedObject;
            }
            set
            {
                _selectedObject = value;
                OnPropertyChanged("SelectedObject");
            }
        }

        //private Dictionary<string, string> _columnsWidths = new Dictionary<string, string>();
        //public Dictionary<string, string> columnsWidths
        //{
        //    get
        //    {
        //        return _columnsWidths;
        //    }
        //}

        public DemoViewModel()
        {
            string fileName = AppDomain.CurrentDomain.BaseDirectory + "demodata.json";
            if (!System.IO.File.Exists(fileName))
            {
                throw new Exception("Файл  данных" + fileName + " не существует!");
            }

            StreamReader FS = File.OpenText(fileName);
            demoJson = FS.ReadToEnd();
            FS.Close();
            
            DemoData = JsonConvert.DeserializeObject<ObservableCollection<object>>(demoJson);
        }

        public void SetColumnWidth(string columnName, string Width)
        {
            if(userSettings.columnWidthValues.ContainsKey(columnName))
                userSettings.columnWidthValues[columnName] = Width;
            else
                userSettings.columnWidthValues.Add(columnName, Width);
        }

        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged(string prop = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(prop));
        }

        public void ApplyFilters(string Where)
        {
            DataTable T = JsonConvert.DeserializeObject<DataTable>(demoJson);
            DataRow[] dataRows = T.Select(Where);
            string filteredJson = "[]";
            if (dataRows.Length > 0)
            {
                DataTable T1 = dataRows.CopyToDataTable<DataRow>();
                filteredJson = JsonConvert.SerializeObject(T1);
            }
            else
            {
                T.Rows.Clear();
                filteredJson = JsonConvert.SerializeObject(T);
            }
            DemoData = JsonConvert.DeserializeObject<ObservableCollection<object>>(filteredJson);
            OnPropertyChanged("");
        }

        public void Refresh()
        {
            DemoData = JsonConvert.DeserializeObject<ObservableCollection<object>>(demoJson);
            OnPropertyChanged("");
        }

    }
}
