using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;

namespace BUS
{
    public class Email
    {
        /*private string m_mailto;
        private string m_body;
        public string Mailto
        {
            get { return m_mailto; }
            set { m_mailto = value; }
        }
        
        public string Body
        {
            get { return m_body; }
            set { m_body = value; }
        }

        public Email(string mailto, string body)
        {
            m_mailto = mailto;
            m_body = body;

        }*/
        public static bool sendMail(string mailTo,string body,string subject)
        {
            string _mailServer = "smtp.gmail.com";
            int _mailPort = 587; // Work well, 465 Timeout,587

            string _user = "beatifulhouseGroup@gmail.com";//dien gmail cho nayf
            string _pass = "khtn1234";//dien mat khau cua gmail

            string _mailFrom = "beatifulhouseGroup@gmail.com";
            MailMessage mailMessage = new MailMessage();
            SmtpClient mailClient = new SmtpClient(_mailServer, _mailPort);
            mailClient.Timeout = 10000;
            mailClient.Credentials = new System.Net.NetworkCredential(_user, _pass);
            mailClient.EnableSsl = true;
            //mailClient.UseDefaultCredentials = true; // no work

            mailMessage.IsBodyHtml = true;
            mailMessage.From = new MailAddress(_mailFrom);
            mailMessage.Subject = subject;

            mailMessage.Body = body;

            mailMessage.To.Add(mailTo);

            try
            {
                mailClient.Send(mailMessage);
               // Response.Write("Send mail success");
                return true;
            }
            catch (Exception ex)
            {
              //  Response.Write("Send mail fail, " + ex.Message);
                return false;
            }

        }
    }
}
