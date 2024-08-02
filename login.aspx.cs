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


namespace Treasure
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Response.Redirect("welcome_user.aspx");
            }

        }
        protected void sumbit(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=Book_lib;Trusted_Connection=True");
           
            SqlCommand cmd = new SqlCommand("select * from user_registration where email=@email and password=@password", con);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            
            con.Open();
            string username = dt.Rows[0]["username"].ToString();
            string occupation = dt.Rows[0]["occupation"].ToString();
            string myimg = dt.Rows[0]["myimg"].ToString();
            string fullname = dt.Rows[0]["fullname"].ToString();

            
            
            int i = cmd.ExecuteNonQuery();
            
            con.Close();
            
            if (dt.Rows.Count > 0) {
                Session["fullname"] = fullname.ToUpper();
                Session["myimg"] = myimg;
                Session["username"] = username.ToUpper();
                Session["occupation"] = occupation.ToUpper();



                Session["email"] = email.Text.ToUpper();
                Response.Redirect("welcome_user.aspx");}

            else {
            
}




        }







            //   // string email = email.Text;
            //    string pass = password.Text;
            //    string msg = scalarReturn("select count(*) from user_registration where email='" + email + "' and password='" + password + "'");

            //    if (msg.Equals("0"))
            //    {
            //        Response.Write("<script> alert('Invalid username and password')</script>");
            //    }
            //    else
            //    {
            //        Session["id"] = scalarReturn("select Id from staff_register where username='" + email + "' and password='" + password + "'");
            //        msg = scalarReturn("select designation from staff_register where username='" + email + "' and password='" + password + "'");
            //        if (msg.Equals("1"))
            //        {
            //            Session["role"] = msg;
            //            //Session["username"] = email.Text;
            //            Response.Redirect("home.aspx");

            //        }
            //        else if (msg.Equals("2"))
            //        {
            //            Session["role"] = msg;
            //           // Session["username"] = username.Text;
            //            Response.Redirect("welcome_user.aspx");

            //        }
            //        else
            //        {
            //            Session.RemoveAll();
            //            Session.Abandon();
            //            Response.Redirect("Login.aspx");
            //        }
            //    }



            //}
            //public string scalarReturn(string q)
            //{
            //    SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=Book_lib;Trusted_Connection=True");
            //    con.Open();
            //    SqlCommand cmd = new SqlCommand(q, con);
            //    string s = cmd.ExecuteScalar().ToString();
            //    return s;
            //}
            //protected void clear(object sender, EventArgs e)
            //{
            //    email.Text = "";
            //    password.Text = "";
            //}

            //protected void Unnamed_Click(object sender, EventArgs e)
            //{

            //}

            //protected void Unnamed_Click1(object sender, EventArgs e)
            //{

            //}




       
    }
}