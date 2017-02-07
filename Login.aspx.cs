using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;

namespace E_Affiliation
{
    public partial class Login : System.Web.UI.Page
    {
        public LoginData ojlog = new LoginData();
        sql_injection checksqlinjection = new sql_injection();
        Dataset.LoginTableAdapters.Mst_LoginTableAdapter LgAD = new Dataset.LoginTableAdapters.Mst_LoginTableAdapter();
        Dataset.Login.Mst_LoginDataTable LgDT = new Dataset.Login.Mst_LoginDataTable();
        Dataset.LoginTableAdapters.QueriesTableAdapter qry = new Dataset.LoginTableAdapters.QueriesTableAdapter();
        
        public string pswd;
        public string oldpswd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtUserName.Focus();
                Session.Clear();
                Random rd = new Random();
                Session["rnumb"] = rd.Next();
                string rno = Convert.ToString(Session["rnumb"]);
                btnLogin.Attributes.Add("onClick", "return EncryptPassword('" + rno + "');");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                   // LgDT = LgAD.GetLoginStatus(txtUserName.Text);
                    ojlog.UserId = txtUserName.Text;
                    ojlog.Password = txtPassword.Text;
                    //if (LgDT.Rows[0]["Forcibly_Changed_Pwd"].ToString() == "Y")
                    //{
                    //    Session["Valid"] = ojlog;
                    //    Response.Redirect("ChangePassword.aspx", false);
                    //}
                    //else if (LgDT.Rows[0]["Forcibly_Changed_Pwd"].ToString() == "N")
                    //{
                       // pswd = s_hex_md5(txtPassword.Text.ToString());
                   // qry = new Dataset.LoginTableAdapters.QueriesTableAdapter();
                       // oldpswd = qry.GetLoginPwd(txtUserName.Text).ToString();

                        LgDT = LgAD.GetLoginDetails(txtUserName.Text.ToString());

                        if (Check(txtUserName.Text.Trim(), txtPassword.Text.Trim()) == true)
                    
                        {
                            if (LgDT.Rows.Count > 0)
                            {

                                ojlog.CollegeID = LgDT.Rows[0]["CollegeID"].ToString();
                                ojlog.UniversityID = LgDT.Rows[0]["UniversityID"].ToString();
                                ojlog.UserId = LgDT.Rows[0]["UserID"].ToString();
                                ojlog.UserName = LgDT.Rows[0]["UserName"].ToString();
                                ojlog.Institute_Type = LgDT.Rows[0]["Institute_Type"].ToString();
                                ojlog.RoleId = LgDT.Rows[0]["RoleId"].ToString();
                                Session["Valid"] = ojlog;
                                if (ojlog.RoleId=="U")
                                {
                                    Response.Redirect("~/HomeAdmin.aspx", false);
                                }
                                else 
                                {
                                    Response.Redirect("~/Home.aspx", false);
                                }
                            }
                        }
                        else
                        {
                            lblMsg.Text = "Enter Valid UserName and Password";
                        }
                  //  }
                }
                catch (Exception ex)
                {
                    //lblMsg.Visible = true;
                    //lblMsg.Text = "User ID not Exist";
                    //return;
                    string error = ex.Message;
                    Response.Redirect("~/ErrorPage.aspx?error=" + encryp.EncryptData(error), false);
                }
            }
        }
        //public static String s_hex_md5(String originalPassword)
        //{


        //    UTF8Encoding encoder = new UTF8Encoding();
        //    MD5 md5 = new MD5CryptoServiceProvider();

        //    Byte[] hashedbytes = md5.ComputeHash(encoder.GetBytes(originalPassword));
        //    return BitConverter.ToString(hashedbytes).Replace("-", "").ToLower();

        //}
        bool Check(string UserName, string Password)
        {
            UserName = txtUserName.Text;


            txtPassword.Text = UserName.ToLower().Trim();
            //userDt = userAD.GetValidUserData(UserName);
            LgDT = LgAD.GetLoginDetails(txtUserName.Text.ToString());

            if (LgDT.Rows.Count > 0)
            {
                string rnostr = Convert.ToString(Session["rnumb"]) + Convert.ToString(LgDT.Rows[0]["Password"]).ToString();
                string strHash = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(rnostr.Trim(), "md5");
                return strHash.ToLower().Trim() == Password.ToLower().Trim();
            }
            else
            {
                return false;
            }
        }
        protected void CustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (checksqlinjection.CheckForSQLInjectionName(args.Value.ToUpper()))
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}