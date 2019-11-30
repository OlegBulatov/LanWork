using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using DIOS.Web.XamlExtensions;
using CSHTML5;

namespace GridOrganizer
{
    public class ModuleStruct : DIOSObject
    {
        public string module { get; set; }
        public string form { get; set; }
        public string title { get; set; }
    }

    class MODULE : CollectionInitializer
    {
        public override string ObjectClassName
        {
            get
            {
                return "MODULE";
            }
        }
        public override INotifyPropertyChanged GetObjectCollection(string Where)
        {
            DIOSObjectCollection<ModuleStruct> col = new DIOSObjectCollection<ModuleStruct>(ObjectClassName, Where, "");
            this.objectCollection = col;
            return col;
        }
    }
}
