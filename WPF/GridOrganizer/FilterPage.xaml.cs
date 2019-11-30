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
using System.Reflection;

namespace GridOrganizer
{
    public class BindingStruct
    {
        private string path;
        public string Path
        {
            get
            {
                return path;
            }
        }
        private string elementName;
        public string ElementName
        {
            get
            {
                return elementName;
            }
        }
        public BindingStruct(string Path, string ElementName)
        {
            path = Path;
            elementName = ElementName;
        }
    }

    public class FormControlStruct
    {
        private string controlName;
        public string ControlName
        {
            get
            {
                return controlName;
            }
        }
        private string typeName;
        public string TypeName
        {
            get
            {
                return typeName;
            }
        }
        private int left;
        public int Left
        {
            get
            {
                return left;
            }
        }
        private int top;
        public int Top
        {
            get
            {
                return top;
            }
        }
        private int width;
        public int Width
        {
            get
            {
                return width;
            }
        }
        private int height;
        public int Height
        {
            get
            {
                return height;
            }
        }
        private string tag;
        public string Tag
        {
            get
            {
                return tag;
            }
        }

        public FormControlStruct(string ControlName, string TypeName, int Left, int Top, int Width, int Height, string Tag)
        {
            controlName = ControlName;
            typeName = TypeName;
            left = Left;
            top = Top;
            width = Width;
            height = Height;
            tag = Tag;
        }
    }

    public class FilterFormInitializer
    {
        public virtual List<FormControlStruct> formControls
        {
            get
            {
                return new List<FormControlStruct>();
            }
        }
    }

    public partial class FilterPage : Page
    {
        private FilterFormInitializer formInitializer;

        public FilterPage()
        {
            this.InitializeComponent();
        }
        public FilterPage(string initializerClassName) : this()
        {
            this.Height = 0;
            Type formInitType = Type.GetType(this.GetType().Namespace + "." + initializerClassName);
            if (formInitType != null)
            {
                formInitializer = Activator.CreateInstance(formInitType) as FilterFormInitializer;
                this.Height = 90;
            }
            if (formInitializer == null)
                return;
                //throw new Exception("Класс инициализатора формы " + initializerClassName + " не определен.");

            foreach(FormControlStruct formControl in formInitializer.formControls)
            {
                Type itemType = Type.GetType(formControl.TypeName);
                if (itemType != null)
                {
                    UIElement newItem = Activator.CreateInstance(itemType) as UIElement;
                    PropertyInfo piName = itemType.GetProperty("Name");
                    if (piName != null)
                        piName.SetValue(newItem, formControl.ControlName);
                    PropertyInfo piHAl = itemType.GetProperty("HorizontalAlignment");
                    if (piHAl != null)
                        piHAl.SetValue(newItem, HorizontalAlignment.Left);
                    PropertyInfo piVAl = itemType.GetProperty("VerticalAlignment");
                    if (piVAl != null)
                        piVAl.SetValue(newItem, VerticalAlignment.Top);
                    PropertyInfo piMargin = itemType.GetProperty("Margin");
                    if (piMargin != null)
                    {
                        Thickness marginValue = new Thickness(formControl.Left, formControl.Top, 0, 0);
                        piMargin.SetValue(newItem, marginValue);
                    }
                    PropertyInfo piWidth = itemType.GetProperty("Width");
                    if (piWidth != null)
                        piWidth.SetValue(newItem, formControl.Width);
                    PropertyInfo piHeight = itemType.GetProperty("Height");
                    if (piHeight != null)
                        piHeight.SetValue(newItem, formControl.Height);
                    PropertyInfo piTag = itemType.GetProperty("Tag");
                    if (piTag != null)
                        piTag.SetValue(newItem, formControl.Tag);

                    this.contentGrid.Children.Add(newItem);
                }
            }
        }

        public Grid ContentGrid
        {
            get
            {
                return this.contentGrid;
            }
        }

        public int ClientHeight
        {
            get
            {
                return 90;
            }
        }
    }
}
