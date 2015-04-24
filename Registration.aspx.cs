using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;
using System.Net.Mail;
using System.Security.Policy;
using System.Configuration;
using System.Net; 

public partial class Registration : System.Web.UI.Page
{
    String userName;
    String lastName;
    String password;
    String repeatpassword;
    String email;
    String city;
    bool status = false;
   
    string display = "Pop-up!";
    string source = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\PASHA\DOCUMENTS\WEBSITE.MDF;Integrated Security=True";
 
    protected void Page_Load(object sender, EventArgs e)
    {
        Lb5.Font.Size = FontUnit.XLarge;
        Lb6.Font.Size = FontUnit.XLarge;
        Lb7.Font.Size = FontUnit.XLarge;

    }
 

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "Please wait...";
        int id = 1;
        userName = txtName.Text;
        lastName = txtLastName.Text;
        email = txtEmail.Text;
        city = txtCity.Text;
        password = txtPassword.Text;
        repeatpassword = txtRepeatPassword.Text;
        if (userName == String.Empty || lastName == String.Empty || password == String.Empty || repeatpassword == String.Empty || email == String.Empty || city == String.Empty)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Please Fill All Fields";
        }
        
        else
        {
            if (password != repeatpassword)
            {
                Label1.ForeColor = System.Drawing.Color.Red;////COLOUR
                Label1.Text = "Password Doesnot Match!";
            }

            else
            {
                SqlConnection myConnection = new SqlConnection(source);
                try
                {
                    System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
                    cmd.CommandType = System.Data.CommandType.Text;
                    cmd.CommandText = ("insert into website1 values('" + id + "','" + userName + "','" + lastName + "','" + email + "','" + city + "','" + password + "','" + repeatpassword + "','" + status + "');");
                    cmd.Connection = myConnection;
                    myConnection.Open();
                    cmd.ExecuteNonQuery();
                    myConnection.Close(); 

                    Label1.ForeColor = System.Drawing.Color.Green;////COLOUR
                    Label1.Text = "Records are Submitted Successfully!"+" \n  Confermation Email has been sended to you!";
                   
                   // SendMail();  
                SendActivationEmail(1);

                   lbemail.Text = "Success Pasha!";
                }
                catch (SqlException ex)
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "You failed! " + ex.Message;
                }
            }
        }
    }

    private void SendActivationEmail(int userId)
    {

            //  string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        /*    string activationCode = Guid.NewGuid().ToString();
          using (SqlConnection con = new SqlConnection(source))
           {

               System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
               cmd.CommandType = System.Data.CommandType.Text;
               cmd.CommandText = ("UPDATE website1 SET status='true' WHERE EmailAdress=" + "'" + txtEmail.Value + "'and Password='" + txtPassword.Value + "'");
               cmd.Connection = con;
               con.Open();
               cmd.ExecuteNonQuery();
               con.Close();
               // using (SqlCommand cmd = new SqlCommand("INSERT INTO website1 VALUES(@UserId, @ActivationCode)"))

           }*/
        using (MailMessage mm = new MailMessage("sarwanpasha@gmail.com", txtEmail.Text))
            {
                mm.Subject = "Account Activation";
                string body = "Hello " + txtEmail.Text.Trim() + ",";
                body += "<br /><br />Please click the following link to activate your account";
                body += "<br /><a href = '" + "http://localhost:1485/Emailconfermation.aspx" + "'>Click here to activate your account.</a>";
                body += "<br /><br />Thanks";
                mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("sarwanpasha@gmail.com", "incorrect123@");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {

    }
}