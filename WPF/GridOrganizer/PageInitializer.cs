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
using CSHTML5;


namespace DIOS.Web.XamlExtensions
{
    public class CollectionInitializer
    {
        protected IFilterControlled objectCollection;
        public virtual string ObjectClassName { get; }
        public virtual INotifyPropertyChanged GetObjectCollection(string Where)
        {
            DIOSObjectCollection < DIOSObject >  col = new DIOSObjectCollection<DIOSObject>("OBJECT_TYPE", Where, "");
            this.objectCollection = col;
            return col;
        }
        public INotifyPropertyChanged GetObjectCollection()
        {
            return GetObjectCollection("");
        }

        public void RefreshObjectCollection()
        {
            if (this.objectCollection != null)
                this.objectCollection.Refresh();

        }

        public virtual bool GenerateColumns(DataGrid dataGrid)
        {
            return false;
        }

    }
}
