﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DersaClientService.Properties {
    
    
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "17.11.0.0")]
    internal sealed partial class Settings : global::System.Configuration.ApplicationSettingsBase {
        
        private static Settings defaultInstance = ((Settings)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new Settings())));
        
        public static Settings Default {
            get {
                return defaultInstance;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("http://localhost:11433")]
        public string ClientWebServiceUrl {
            get {
                return ((string)(this["ClientWebServiceUrl"]));
            }
            set {
                this["ClientWebServiceUrl"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("http://dersa.ru/QueryExecuteService.svc")]
        public string ServerWebServiceUrl {
            get {
                return ((string)(this["ServerWebServiceUrl"]));
            }
            set {
                this["ServerWebServiceUrl"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("Data Source=localhost\\ALKOR;Initial Catalog=1gb_dersa8;Integrated Security=SSPI")]
        public string DatabaseConnectionString {
            get {
                return ((string)(this["DatabaseConnectionString"]));
            }
            set {
                this["DatabaseConnectionString"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("C:\\Program Files (x86)\\Meld\\Meld.exe")]
        public string CompareProgramPath {
            get {
                return ((string)(this["CompareProgramPath"]));
            }
            set {
                this["CompareProgramPath"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("d:\\dersa_attrs.git\\add_to_git.bat")]
        public string AfterSaveCommand {
            get {
                return ((string)(this["AfterSaveCommand"]));
            }
            set {
                this["AfterSaveCommand"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool DeleteFileAfterSaveOnServer {
            get {
                return ((bool)(this["DeleteFileAfterSaveOnServer"]));
            }
            set {
                this["DeleteFileAfterSaveOnServer"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool UseUniqueFileNames {
            get {
                return ((bool)(this["UseUniqueFileNames"]));
            }
            set {
                this["UseUniqueFileNames"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("notepad.exe")]
        public string EditTextCommand {
            get {
                return ((string)(this["EditTextCommand"]));
            }
            set {
                this["EditTextCommand"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("d:\\dersa_attrs.git\\")]
        public string TempDir {
            get {
                return ((string)(this["TempDir"]));
            }
            set {
                this["TempDir"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("d:\\Temp")]
        public string WordDir {
            get {
                return ((string)(this["WordDir"]));
            }
            set {
                this["WordDir"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("QUERY_AUDIT$OnQuery")]
        public string QueryExecuteProcedure {
            get {
                return ((string)(this["QueryExecuteProcedure"]));
            }
            set {
                this["QueryExecuteProcedure"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("")]
        public string UserToken {
            get {
                return ((string)(this["UserToken"]));
            }
            set {
                this["UserToken"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("ws://localhost:12663/Socket/Connect")]
        public string WebSocketUrl {
            get {
                return ((string)(this["WebSocketUrl"]));
            }
            set {
                this["WebSocketUrl"] = value;
            }
        }
    }
}
