using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Emailconfermation : System.Web.UI.Page
{
    string source = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\PASHA\DOCUMENTS\WEBSITE.MDF;Integrated Security=True";
   // bool confermation = false;
    string RequestUserID, RequestPassword;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            ActivateMyAccount();
        }
    }

    private void ActivateMyAccount()
    {
           
                RequestUserID = Request.QueryString["UserID"];
                //RequestPassword = Request.QueryString["Password"];

             
            lbtest.Text = "Welcome    Email id = " + RequestUserID;
        try
        {
            SqlConnection myConnection = new SqlConnection(source);
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            // cmd.CommandText = ("insert into website1 values('" + id + "','" + userName + "','" + lastName + "','" + email + "','" + city + "','" + password + "','" + repeatpassword + "','" + status + "');");
            // cmd = new SqlCommand("UPDATE website1 SET status=true WHERE EmailAdress="+ @UserID +"AND Password=@EmailId", con);
           // cmd.CommandText = ("UPDATE website1 SET status='true' WHERE EmailAdress=" + "'" + RequestUserID + "'and Password='" + RequestPassword + "'");
            cmd.CommandText = ("UPDATE website1 SET status='true' WHERE EmailAdress=" + "'" + RequestUserID + "'");
            cmd.Connection = myConnection;
            myConnection.Open();
            cmd.ExecuteNonQuery();
            myConnection.Close();
        }
        catch(Exception confermation){
            lbconfermation.Text = "Confermation exception   "+confermation.Message;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx", true);
    }
}