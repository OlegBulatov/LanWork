using System;
using DIOS.BusinessBase;
using DIOS.Common;
using DIOS.Common.Interfaces;
using DIOS.ObjectLib;
using Newtonsoft.Json;
using System.Runtime.Serialization;
using System.Collections;

namespace DIOS.Lanit
{
    [LocalizedName("Тип заявки JIRA")]
    [DataContract]
    public class JiraIssueType : DIOS.ObjectLib.Object
    {

        public JiraIssueType() : base() { }

        public JiraIssueType(UniStructView v, ObjectFactory f) : base(v, f) { }

        public const string EntityClassName = "JIRA_ISSUE_TYPE";
        #region jira_issue_type
        protected SqlInt32 _jira_issue_type;
        [DataMember]
        [ObjectPropertyAttribute("#", true, false, 0, false, true)]
        public SqlInt32 jira_issue_type
        {
            get
            {
                return _jira_issue_type;
            }
            set
            {
                if (!this.changedFields.Contains("_jira_issue_type") && this._jira_issue_type != value)
                    this.changedFields.Add("_jira_issue_type", this._jira_issue_type);
                _jira_issue_type = value;
            }
        }
        #endregion
        #region name
        protected SqlString _name;
        [DataMember]
        [ObjectPropertyAttribute("название", false, false, 255, false, false)]
        public SqlString name
        {
            get
            {
                return _name;
            }
            set
            {
                if (!this.changedFields.Contains("_name") && this._name != value)
                    this.changedFields.Add("_name", this._name);
                _name = value;
            }
        }
        #endregion
        #region description
        protected SqlString _description;
        [DataMember]
        [ObjectPropertyAttribute("описание", false, false, 4000, false, false)]
        public SqlString description
        {
            get
            {
                return _description;
            }
            set
            {
                if (!this.changedFields.Contains("_description") && this._description != value)
                    this.changedFields.Add("_description", this._description);
                _description = value;
            }
        }
        #endregion
        #region subtask
        protected SqlBoolean _subtask;
        [DataMember]
        [ObjectPropertyAttribute("subtask", false, false, 0, false, false)]
        public SqlBoolean subtask
        {
            get
            {
                return _subtask;
            }
            set
            {
                if (!this.changedFields.Contains("_subtask") && this._subtask != value)
                    this.changedFields.Add("_subtask", this._subtask);
                _subtask = value;
            }
        }
        #endregion
        #region Константы
        #endregion
        #region RefObjects
        #endregion
        #region Методы

        #region GetFactory
        public static ObjectFactory GetFactory()
        {
            ApplicationSqlManager M = CommonEnvironment.StaticManager;
            ObjectFactory F = M.GetFactory(EntityClassName);
            M.IsOccupied = false;
            return F;
        }
        #endregion
        #region List
        public static IObjectCollection List(IParameterCollection Params, int offset)
        {
            string token = "T0J1bGF0b3Y6YnJhY2VsZXR0RV8xODEx";
            string url = "http://jira-app-pc:8080/rest/api/2/issuetype";
            System.Net.HttpWebRequest req = System.Net.HttpWebRequest.CreateHttp(url);
            req.Method = "GET";
            req.ContentType = "application/json";
            req.Headers.Add("Authorization", "Basic " + token);
            var resp = req.GetResponse();
            var respStream = resp.GetResponseStream();
            var SR = new System.IO.StreamReader(respStream);

            string jiraSourceList = SR.ReadToEnd();
            dynamic issueTypeArr = JsonConvert.DeserializeObject(jiraSourceList);
            //object issueTypeArr = jiraSourceListObject.issues;
            ObjectFactory F = GetFactory();
            IObjectCollection result = new ObjectCollection(F.GetObjectProperties(), F.ObjectType, F.FactoryClassName);
            foreach (dynamic i in (IList)issueTypeArr)
            {
                JiraIssueType JT = new JiraIssueType(new UniStructView(), F);
                UniStructView vs = JT.GetUniView();
                vs["jira_issue_type"] = new SqlInt32(int.Parse(i.id.ToString()));
                vs["name"] = new SqlString(i.name.ToString());
                vs["description"] = new SqlString((string)i.description);
                vs["subtask"] = new SqlBoolean((bool)i.subtask);

                result.Add(new JiraIssueType(vs, F));
            }
            return result;

        }
        #endregion
        #endregion
        #region GetUniView()
        protected override UniStructView GetUniView()
        {
            IndexerPropertyDescriptorCollection props = this.GetObjectProperties();
            object[] dataStore = new object[props.Count];
            int i = 0;
            dataStore[i++] = jira_issue_type;
            dataStore[i++] = name;
            dataStore[i++] = description;
            dataStore[i++] = subtask;
            for (int k = i; k < props.Count; k++)
            {
                dataStore[k] = this[props[k].Name];
            }
            UniStructView result = new UniStructView(dataStore, props);
            return result;
        }
        #endregion
        #region Refs
        #endregion
        #region Properties
        #endregion
    }
}