using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using Newtonsoft.Json.Linq;
using System.Configuration;
using System.Net;
using System.IO;

namespace Treasure
{
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }


        protected void sumbit(object sender, EventArgs e)
        {

            if (IsReCaptchValid())
            {
                using (SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=Book_lib;Trusted_Connection=True"))
                {
                    con.Open();

                    // Check if the user is already logged in
                    SqlCommand checkSessionCmd = new SqlCommand("SELECT session_id FROM user_registration WHERE email=@email AND password=@password", con);
                    checkSessionCmd.Parameters.AddWithValue("@email", email.Text);
                    checkSessionCmd.Parameters.AddWithValue("@password", password.Text);

                    string currentSessionId = HttpContext.Current.Session.SessionID;
                    string storedSessionId = checkSessionCmd.ExecuteScalar() as string;

                    if (storedSessionId != null && storedSessionId != currentSessionId)
                    {
                        Response.Write("<script language=javascript>alert('User is already logged in from another session.');</script>");
                        return;
                    }

                    // Update the session_id for the current login
                    SqlCommand updateSessionCmd = new SqlCommand("UPDATE user_registration SET session_id=@session_id WHERE email=@email AND password=@password", con);
                    updateSessionCmd.Parameters.AddWithValue("@session_id", currentSessionId);
                    updateSessionCmd.Parameters.AddWithValue("@email", email.Text);
                    updateSessionCmd.Parameters.AddWithValue("@password", password.Text);
                    updateSessionCmd.ExecuteNonQuery();

                    // Retrieve user details
                    SqlCommand retrieveUserCmd = new SqlCommand("SELECT * FROM user_registration WHERE email=@email AND password=@password", con);
                    retrieveUserCmd.Parameters.AddWithValue("@email", email.Text);
                    retrieveUserCmd.Parameters.AddWithValue("@password", password.Text);

                    SqlDataAdapter sda = new SqlDataAdapter(retrieveUserCmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        string username = dt.Rows[0]["username"].ToString();
                        string occupation = dt.Rows[0]["occupation"].ToString();
                        string myimg = dt.Rows[0]["myimg"].ToString();
                        string fullname = dt.Rows[0]["fullname"].ToString();
                        string role = dt.Rows[0]["role"].ToString();

                        Session["fullname"] = fullname.ToUpper();
                        Session["myimg"] = myimg;
                        Session["username"] = username.ToUpper();
                        Session["occupation"] = occupation.ToUpper();
                        Session["role"] = role;
                        Session["email"] = email.Text.ToUpper();

                        if (role.Equals("1"))
                        {
                            Response.Redirect("welcome_admin.aspx");
                        }
                        else if (role.Equals("2"))
                        {
                            Response.Write("<script language=javascript>alert('It\'s a restricted area for users');</script>");
                        }
                        else
                        {
                            Session.RemoveAll();
                            Session.Abandon();
                            Response.Redirect("Login.aspx");
                        }
                    }
                }
            }
            else
            {
                Response.Write("<script language=javascript>alert('Captcha Invalid');</script>");
            }


        }



       






        public bool IsReCaptchValid()
        {
            var result = false;
            var captchaResponse = Request.Form["g-recaptcha-response"];
            var secretKey = "6Ld9OhwqAAAAALQRej_YhpKN-19QLM8zRs6KjAqK";
            var apiUrl = "https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}";
            var requestUri = string.Format(apiUrl, secretKey, captchaResponse);
            var request = (HttpWebRequest)WebRequest.Create(requestUri);

            using (WebResponse response = request.GetResponse())
            {
                using (StreamReader stream = new StreamReader(response.GetResponseStream()))
                {
                    JObject jResponse = JObject.Parse(stream.ReadToEnd());
                    var isSuccess = jResponse.Value<bool>("success");
                    result = (isSuccess) ? true : false;
                }
            }
            return result;
        }







    }
}