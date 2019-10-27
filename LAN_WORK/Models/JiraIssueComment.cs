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
    [LocalizedName("Комментарий JIRA")]
    [DataContract]
    public class JiraComment : DIOS.ObjectLib.Object
    {

        public JiraComment() : base() { }

        public JiraComment(UniStructView v, ObjectFactory f) : base(v, f) { }

        public const string EntityClassName = "JIRA_COMMENT";
        #region jira_comment
        protected SqlInt32 _jira_comment;
        [DataMember]
        [ObjectPropertyAttribute("#", true, false, 0, false, true)]
        public SqlInt32 jira_comment
        {
            get
            {
                return _jira_comment;
            }
            set
            {
                if (!this.changedFields.Contains("_jira_comment") && this._jira_comment != value)
                    this.changedFields.Add("_jira_comment", this._jira_comment);
                _jira_comment = value;
            }
        }
        #endregion
        #region jira_issue
        protected SqlInt32 _jira_issue;
        [DataMember]
        [ObjectPropertyAttribute("заявка jira", false, false, 0, false, false)]
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
        #region body
        protected SqlString _body;
        [DataMember]
        [ObjectPropertyAttribute("body", false, false, 4000, false, false)]
        public SqlString body
        {
            get
            {
                return _body;
            }
            set
            {
                if (!this.changedFields.Contains("_body") && this._body != value)
                    this.changedFields.Add("_body", this._body);
                _body = value;
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
        public static IObjectCollection List(IParameterCollection Params)
        {
            //            Params.Remove("1");
            //            if(Params.Contains("c.jira_issue_comment"))
            //            {
            //                Params.Add("id", Params["c.jira_issue_comment"].Value);
            //                Params.Remove("c.jira_issue_comment");
            //            }
            int issueId = 22623;
            if (Params.Contains("jira_issue"))
            {
                issueId = int.Parse(Params["jira_issue"].Value.ToString());
            }
            Params.Clear();

            string token = "T0J1bGF0b3Y6YnJhY2VsZXR0RV8xODEx";
            string url = "http://jira-app-pc:8080/rest/api/2/issue/" + issueId + "/comment";
            System.Net.HttpWebRequest req = System.Net.HttpWebRequest.CreateHttp(url);
            req.Method = "GET";
            req.ContentType = "application/json";
            req.Headers.Add("Authorization", "Basic " + token);
            var resp = req.GetResponse();
            var respStream = resp.GetResponseStream();
            var SR = new System.IO.StreamReader(respStream);

            string jiraSourceList = SR.ReadToEnd();
            dynamic jiraSourceListObject = JsonConvert.DeserializeObject(jiraSourceList);
            object commentArr = jiraSourceListObject.comments;
            ObjectFactory F = GetFactory();
            IObjectCollection result = new ObjectCollection(F.GetObjectProperties(), F.ObjectType, F.FactoryClassName);
            foreach (dynamic c in (IList)commentArr)
            {
                JiraComment JC = new JiraComment(new UniStructView(), F);
                UniStructView vs = JC.GetUniView();
                vs["jira_comment"] = new SqlInt32(int.Parse(c.id.ToString()));
                vs["jira_issue"] = new SqlInt32(issueId);
                vs["body"] = new SqlString((string)c.body);

                result.Add(new JiraComment(vs, F));
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
            dataStore[i++] = jira_comment;
            dataStore[i++] = jira_issue;
            dataStore[i++] = body;
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