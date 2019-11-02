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
    [LocalizedName("«а€вка JIRA")]
    [DataContract]
    public class JiraIssue : DIOS.ObjectLib.Object
    {

        public JiraIssue() : base() { }

        public JiraIssue(UniStructView v, ObjectFactory f) : base(v, f) { }

        public const string EntityClassName = "JIRA_ISSUE";
        #region jira_issue
        protected SqlInt32 _jira_issue;
        [DataMember]
        [ObjectPropertyAttribute("#", true, false, 0, false, true)]
        public SqlInt32 jira_issue
        {
            get
            {
                return _jira_issue;
            }
            set
            {
                if (!this.changedFields.Contains("_jira_issue") && this._jira_issue != value)
                    this.changedFields.Add("_jira_issue", this._jira_issue);
                _jira_issue = value;
            }
        }
        #endregion
        #region jira_issue_type
        protected SqlInt32 _jira_issue_type;
        [DataMember]
        [ObjectPropertyAttribute("тип за€вки jira", false, false, 0, false, false)]
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
        #region key
        protected SqlString _key;
        [DataMember]
        [ObjectPropertyAttribute("код", false, false, 20, false, false)]
        public SqlString key
        {
            get
            {
                return _key;
            }
            set
            {
                if (!this.changedFields.Contains("_key") && this._key != value)
                    this.changedFields.Add("_key", this._key);
                _key = value;
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
        #region project_name
        protected SqlString _project_name;
        [DataMember]
        [ObjectPropertyAttribute("проект", false, false, 255, false, false)]
        public SqlString project_name
        {
            get
            {
                return _project_name;
            }
            set
            {
                if (!this.changedFields.Contains("_project_name") && this._project_name != value)
                    this.changedFields.Add("_project_name", this._project_name);
                _project_name = value;
            }
        }
        #endregion
        #region creation_date
        protected SqlDateTime _creation_date;
        [DataMember]
        [ObjectPropertyAttribute("дата создани€", false, false, 0, false, false)]
        public SqlDateTime creation_date
        {
            get
            {
                return _creation_date;
            }
            set
            {
                if (!this.changedFields.Contains("_creation_date") && this._creation_date != value)
                    this.changedFields.Add("_creation_date", this._creation_date);
                _creation_date = value;
            }
        }
        #endregion
        #region assignee
        protected SqlString _assignee;
        [DataMember]
        [ObjectPropertyAttribute("исполнитель", false, false, 255, false, false)]
        public SqlString assignee
        {
            get
            {
                return _assignee;
            }
            set
            {
                if (!this.changedFields.Contains("_assignee") && this._assignee != value)
                    this.changedFields.Add("_assignee", this._assignee);
                _assignee = value;
            }
        }
        #endregion
        #region summary
        protected SqlString _summary;
        [DataMember]
        [ObjectPropertyAttribute("тема", false, false, 1000, false, false)]
        public SqlString summary
        {
            get
            {
                return _summary;
            }
            set
            {
                if (!this.changedFields.Contains("_summary") && this._summary != value)
                    this.changedFields.Add("_summary", this._summary);
                _summary = value;
            }
        }
        #endregion
        #region status
        protected SqlInt32 _status;
        [DataMember]
        [ObjectPropertyAttribute("статус", false, false, 0, false, false)]
        public SqlInt32 status
        {
            get
            {
                return _status;
            }
            set
            {
                if (!this.changedFields.Contains("_status") && this._status != value)
                    this.changedFields.Add("_status", this._status);
                _status = value;
            }
        }
        #endregion
        #region status_name
        protected SqlString _status_name;
        [DataMember]
        [ObjectPropertyAttribute("статус, наименование", false, false, 1000, false, false)]
        public SqlString status_name
        {
            get
            {
                return _status_name;
            }
            set
            {
                if (!this.changedFields.Contains("_status_name") && this._status_name != value)
                    this.changedFields.Add("_status_name", this._status_name);
                _status_name = value;
            }
        }
        #endregion
        #region author
        protected SqlString _author;
        [DataMember]
        [ObjectPropertyAttribute("автор", false, false, 255, false, false)]
        public SqlString author
        {
            get
            {
                return _author;
            }
            set
            {
                if (!this.changedFields.Contains("_author") && this._author != value)
                    this.changedFields.Add("_author", this._author);
                _author = value;
            }
        }
        #endregion
        #region link
        protected SqlString _link;
        [DataMember]
        [ObjectPropertyAttribute("ссылка", false, false, 255, false, false)]
        public SqlString link
        {
            get
            {
                return _link;
            }
            set
            {
                if (!this.changedFields.Contains("_link") && this._link != value)
                    this.changedFields.Add("_link", this._link);
                _link = value;
            }
        }
        #endregion
        #region  онстанты
        #endregion
        #region RefObjects
        #endregion
        #region ћетоды

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
            //Params.Clear();
            Params.Remove("1");
            if (Params.Contains("c.jira_issue"))
            {
                Params.Add("id", Params["c.jira_issue"].Value);
                Params.Remove("c.jira_issue");
            }
            Params.Add("project", 10505);
            //Params.Add("created", "2017/08/01", ">=");
            string token = "T0J1bGF0b3Y6YnJhY2VsZXR0RV8xODEx";
            string url = "http://jira-app-pc:8080/rest/api/2/search?startAt=" + offset.ToString() + "&maxResults=50&jql=" + Params.GetWhere();// created%3E=%222017/08/01%22and%20project%20=%2010505";
            System.Net.HttpWebRequest req = System.Net.HttpWebRequest.CreateHttp(url);
            req.Method = "GET";
            req.ContentType = "application/json";
            req.Headers.Add("Authorization", "Basic " + token);
            var resp = req.GetResponse();
            var respStream = resp.GetResponseStream();
            var SR = new System.IO.StreamReader(respStream);

            string jiraSourceList = SR.ReadToEnd(); //(new JIRAController()).List(null);
            dynamic jiraSourceListObject = JsonConvert.DeserializeObject(jiraSourceList);
            object issueArr = jiraSourceListObject.issues;
            //var query = from dynamic i in (IList)issueArr
            //            select new { desc = i.key };
            ObjectFactory F = GetFactory();

            //            Logger.LogStatic(JsonConvert.SerializeObject(Params));
            IObjectCollection result = new ObjectCollection(F.GetObjectProperties(), F.ObjectType, F.FactoryClassName);
            foreach (dynamic i in (IList)issueArr)
            {
                JiraIssue J = new JiraIssue(new UniStructView(), F);
                UniStructView vs = J.GetUniView();
                vs["jira_issue"] = new SqlInt32(int.Parse(i.id.ToString()));//new SqlInt32(1);//new SqlInt32(int.Parse(savedScene["aid"].ToString()));
                vs["key"] = new SqlString(i.key.ToString());
                vs["link"] = new SqlString("jira-app-pc:8080/browse/" + (string)i.key);
                dynamic Fi = i.fields;
                vs["description"] = new SqlString(Fi.description == null ? null : Fi.description.ToString());
                dynamic Pr = Fi.project;
                vs["project_name"] = new SqlString(Pr.name == null ? null : Pr.name.ToString());
                dynamic iType = Fi.issuetype;
                vs["jira_issue_type"] = new SqlInt32(int.Parse(iType.id.ToString()));
                dynamic iStatus = Fi.status;
                vs["status"] = new SqlInt32(int.Parse(iStatus.id.ToString()));
                vs["status_name"] = new SqlString((string)iStatus.name);
                vs["author"] = new SqlString((string)Fi.customfield_11505);
                dynamic createdAt = Fi.created;
                vs["creation_date"] = new SqlDateTime((DateTime)createdAt);
                dynamic Asg = Fi.assignee;
                if (Asg != null)
                {
                    vs["assignee"] = new SqlString(Asg.name.ToString());
                }
                vs["summary"] = new SqlString(Fi.summary.ToString());

                result.Add(new JiraIssue(vs, F));
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
            dataStore[i++] = jira_issue;
            dataStore[i++] = jira_issue_type;
            dataStore[i++] = key;
            dataStore[i++] = description;
            dataStore[i++] = project_name;
            dataStore[i++] = creation_date;
            dataStore[i++] = assignee;
            dataStore[i++] = summary;
            dataStore[i++] = status;
            dataStore[i++] = status_name;
            dataStore[i++] = author;
            dataStore[i++] = link;
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