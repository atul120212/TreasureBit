using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Linq.Expressions;
//using System.Activities.Expressions;
using System.Security.Policy;
using System.Web.Services;

namespace Treasure
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static string VerifyCaptcha(string response, string t1, string t2, string t3, string t4, string t5)
        {

            string ReCaptcha_Key = "6Ld9OhwqAAAAAF8mS-lcYEv1VgXfyfV4ReyJjdzR";
            string ReCaptcha_Secret = "6Ld9OhwqAAAAALQRej_YhpKN-19QLM8zRs6KjAqK";

            string url = "https://www.google.com/recaptcha/api/siteverify?secret=" + ReCaptcha_Secret + "&response=" + response;
            //return new WebClient().DownloadString(url);

            string to = "sudhanshu@nandyavart.in"; //To address    
            string from = "sudhanshu@nandyavart.in"; //From address    
            MailMessage message = new MailMessage(from, to);

            //less secure has to be turn on then function will  work
            string mailbody = "<br/>" + "Name: " + t1 + "<br/>" + "Email: " + t2 + "<br/>" + "Phone: " + t3 + "<br/>" + "Subject: " + t5 + "<br/>" + "Full Message: " + t4;
            message.Subject = "Query of Paper/Tissue etc from Website";
            message.Body = mailbody;
            //  message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            //smtp.Host = "relay-hosting.secureserver.net";

            try
            {
                // smtp.Send(message);
                //Label1.Text = "Success. We look to respond soon.";
                return (new WebClient()).DownloadString(url);
            }

            catch (Exception ex)
            {
                // Label1.Text = ex.Message;
                return (new WebClient()).DownloadString(url);
            }
            // return (new WebClient()).DownloadString(url);
        }
    }
}