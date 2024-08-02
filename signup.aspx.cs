﻿using System;
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
    public partial class signup : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        SqlConnection con;
        //Here we declare the parameter which we have to use in our application
        SqlCommand cmd = new SqlCommand();
        SqlParameter sp1 = new SqlParameter();
        SqlParameter sp2 = new SqlParameter();
        SqlParameter sp3 = new SqlParameter();
        SqlParameter sp4 = new SqlParameter();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            SqlConnection con;
            //Here we declare the parameter which we have to use in our application
            SqlCommand cmd = new SqlCommand();
            SqlParameter sp1 = new SqlParameter();
            SqlParameter sp2 = new SqlParameter();
            SqlParameter sp3 = new SqlParameter();
            SqlParameter sp4 = new SqlParameter();
        }

        protected void Register(object sender, EventArgs e)
        {
            // Call StartUpLoad to get the image path
            string imgPath = StartUpLoad();

            // Check if the image was uploaded successfully
            if (string.IsNullOrEmpty(imgPath) && FileUpload1.HasFile)
            {
                // Abort registration if no valid image was uploaded
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Please upload a valid image.')", true);
                return;
            }

            // Database connection and command
            using (SqlConnection con = new SqlConnection("Server=2400003603-DT33\\SQLEXPRESS;Database=Book_lib;Trusted_Connection=True"))
            {
                con.Open();

                using (SqlCommand cmd = new SqlCommand("INSERT INTO user_registration (username, email, password, phone, city, occupation, myimg, repassword, fullname) VALUES (@username, @email, @password, @phone, @city, @occupation, @myimg, @repassword, @fullname)", con))
                {
                    cmd.Parameters.AddWithValue("@username", username.Text);
                    cmd.Parameters.AddWithValue("@email", email.Text);
                    cmd.Parameters.AddWithValue("@password", password.Text);
                    cmd.Parameters.AddWithValue("@phone", phone.Text);
                    cmd.Parameters.AddWithValue("@city", city.Text);
                    cmd.Parameters.AddWithValue("@occupation", occupation.Text);
                    cmd.Parameters.AddWithValue("@myimg", imgPath); // Save the image path
                    cmd.Parameters.AddWithValue("@repassword", repassword.Text);
                    cmd.Parameters.AddWithValue("@fullname", fullname.Text);

                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Response.Redirect("login.aspx");
                    }
                    else
                    {
                        Console.WriteLine("Registration denied");
                    }
                }
            }

            // Clear the form fields
            username.Text = "";
            email.Text = "";
            password.Text = "";
            phone.Text = "";
            city.Text = "";
            occupation.Text = "";
            username.Focus();
        }



        private string StartUpLoad()
        {
            // Default image path in case no image is uploaded
            string imgPath = string.Empty;

            // Check if a file is uploaded
            if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
            {
                // Get the file name of the posted image
                string imgName = FileUpload1.FileName;
                // Set the image path
                imgPath = "uploads/" + imgName;

                // Get the size in bytes
                int imgSize = FileUpload1.PostedFile.ContentLength;

                // Validate the posted file before saving
                if (imgSize > 102400) // 10 MB limit
                {
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);
                    imgPath = string.Empty; // No image path if file is too big
                }
                else
                {
                    // Save the file to the folder
                    FileUpload1.SaveAs(Server.MapPath(imgPath));
                    myimg.ImageUrl = "~/" + imgPath;
                    Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Image saved!')", true);
                }
            }

            return imgPath;
        }

       


    }
}