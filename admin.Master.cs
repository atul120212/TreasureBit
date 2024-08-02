using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



using System.Data.SqlClient;



namespace Treasure
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void logoutt(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                using (SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=Book_lib;Trusted_Connection=True"))
                {
                    con.Open();

                    SqlCommand cmd = new SqlCommand("UPDATE user_registration SET session_id=NULL WHERE email=@email", con);
                    cmd.Parameters.AddWithValue("@email", Session["email"].ToString());
                    cmd.ExecuteNonQuery();
                }

                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }



    }
}