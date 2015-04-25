using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Emailconfermation : System.Web.UI.Page
{
    string source = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\USERS\PASHA\DOCUMENTS\WEBSITE.MDF;Integrated Security=True";
    bool confermation = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                string activationCode = !string.IsNullOrEmpty(Request.QueryString["status"]) ? Request.QueryString["status"] : Guid.Empty.ToString();
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("DELETE FROM website1 WHERE status = @ActivationCode"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.Parameters.AddWithValue("@ActivationCode", activationCode);
                            cmd.Connection = con;
                            con.Open();
                            int rowsAffected = cmd.ExecuteNonQuery();
                            con.Close();
                            if (rowsAffected == 1)
                            {
                                lbconfermation.Text = "Activation successful.";
                            }
                            else
                            {
                                lbconfermation.Text = "Invalid Activation code.";
                            }
                        }
                    }
                }
            }
        }
        catch(Exception ex){
            lbconfermation.Text = "Sorry!" + ex.Message;
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx", true);
    }
}