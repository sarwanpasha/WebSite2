﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;  
using System.Net.Mail;
using System.Net;
using System.Activities; 
using System.Data;
using System.IO;
public partial class _Default : System.Web.UI.Page
{
    public bool log = true;
    String toAddress, fromAddress, subject, body, fromPassword, comments;
    protected void Page_Load(object sender, EventArgs e)
    {
       // Page.MaintainScrollPositionOnPostBack = true;

        lbviews.ForeColor = System.Drawing.Color.Black;
        LbArrival.ForeColor = System.Drawing.Color.White;
        LbJoin.ForeColor = System.Drawing.Color.White;
        Lb2.ForeColor = System.Drawing.Color.White;
        Lb3.ForeColor = System.Drawing.Color.White;
        Lb4.ForeColor = System.Drawing.Color.White;
        Lb9.ForeColor = System.Drawing.Color.White;
        lbwho.ForeColor = System.Drawing.Color.White;
        commentdisplay.ForeColor = System.Drawing.Color.Red;
        Lbvisited.ForeColor = System.Drawing.Color.White;
        Lbdate.ForeColor = System.Drawing.Color.White;

        Lb5.ForeColor = System.Drawing.Color.White;
        LbLocation.ForeColor = System.Drawing.Color.White;
        LbAbout.ForeColor = System.Drawing.Color.White;
        LbUet.ForeColor = System.Drawing.Color.White;
        LbPurpose.ForeColor = System.Drawing.Color.White;
        lbcopy.ForeColor = System.Drawing.Color.White;
        LbNumber.ForeColor = System.Drawing.Color.White;
        lbarrival1.ForeColor = System.Drawing.Color.White;
        Lb6.ForeColor = System.Drawing.Color.White;

        LbArrival.Font.Size = FontUnit.XXLarge;
        LbJoin.Font.Size = FontUnit.XXLarge;
        lbviews.Font.Size = FontUnit.XXLarge;
        lbwho.Font.Size = FontUnit.XXLarge;

        LbLocation.Font.Size = FontUnit.Large;
        LbUet.Font.Size = FontUnit.Large;
        LbNumber.Font.Size = FontUnit.Large;
        LbPurpose.Font.Size = FontUnit.Large;
        LbAbout.Font.Size = FontUnit.Large;
        lbcopy.Font.Size = FontUnit.Large;
        lbarrival1.Font.Size = FontUnit.Large;
        commentdisplay.Font.Size = FontUnit.Large;


        lblAnything.Font.Size = FontUnit.XLarge;
        Lb2.Font.Size = FontUnit.XLarge;
        Lb3.Font.Size = FontUnit.XLarge;
        Lb4.Font.Size = FontUnit.XLarge;
        Lb5.Font.Size = FontUnit.XLarge;
        Lb6.Font.Size = FontUnit.XLarge;
        Lb7.Font.Size = FontUnit.XLarge;
        Lb8.Font.Size = FontUnit.XLarge;
        Lb9.Font.Size = FontUnit.XLarge;

        btnout.Font.Size = FontUnit.Medium;
        Offers.Font.Size = FontUnit.Medium;
        Button9.Font.Size = FontUnit.Medium;
        Button10.Font.Size = FontUnit.Medium;
        btncontact.Font.Size = FontUnit.Medium;
        btnchat.Font.Size = FontUnit.Medium;

        LbTech.Visible = false;
        LbPost.Visible = false;
        tbpost.Visible = false;
        btnpost.Visible = false;
        theDiv.Visible = false;


        fromemail.ForeColor = System.Drawing.Color.Black;
        fromemail.Font.Size = FontUnit.Medium;
        fromcomments.ForeColor = System.Drawing.Color.Black;
        fromcomments.Font.Size = FontUnit.Large;
        TBNAME.ForeColor = System.Drawing.Color.Black;
        TBNAME.Font.Size = FontUnit.Medium;
        TBNUMBER.ForeColor = System.Drawing.Color.Black;
        TBNUMBER.Font.Size = FontUnit.Medium;
        btnClearSesson.Visible = false;
        siteVisited();
        name();
     }
    public void siteVisited()
    {
        try
        {
            int UserCount = Convert.ToInt32(Application["OnlineUsers"]);
            lblSiteVisited.Text = UserCount.ToString();
            lblOnlineUsers.Text = Session["start"].ToString();
        }
        catch (Exception ex)
        {
            LBST.Text = "Sorry!! " + ex.Message;
        }
    }
    public void name()
    {
        try
        {
            lbname.ForeColor = System.Drawing.Color.Green;////COLOUR
            lbname.Text = Session["name"].ToString();
            Session.Remove("name");
            if (lbname.Text=="sarwanpasha@gmail.com")
            {
                LbTech.Visible = true;
                LbPost.Visible = true;
                tbpost.Visible = true;
                btnpost.Visible = true;
            }
            btnout.Visible = true;
        }
        catch(Exception ex){
            lbname.Text = "";
        }
    }
    private void btnlogin_Click(object sender, EventArgs e)
    {
       // Response.Redirect("http://www.microsoft.com/gohere/look.htm");
        Server.Transfer("Registration.aspx", true);
    }
 
 
 
    protected void SendMail()
    {
         fromAddress = fromemail.Text.ToString();
         toAddress = "sarwanpasha@gmail.com";
         fromPassword = "incorrect123@";
         subject = "User Views About The Website ";
         comments = fromcomments.Text.ToString();
         body = "From: " + fromAddress + "\n\n";
         body += "Name: " + TBNAME.Text + "\n\n";
         body += "Number: " + TBNUMBER.Text + "\n\n"; 
         body += "Subject: " + subject + "\n\n"; 
         body += "Question: \n\n" + comments + "\n"; 
         SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587); 
         smtp.EnableSsl = true;
         smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
         smtp.Credentials = new System.Net.NetworkCredential(toAddress, fromPassword);
         smtp.Timeout = 20000; 
         smtp.Send(fromAddress, toAddress, subject, body);
    }
    public void abc()
    {
                try 
        {
            // Get the current directory. 
            string path = Directory.GetCurrentDirectory();
            string target = @"c:\temp";
           // Console.WriteLine("The current directory is {0}", path);
            Clocation.Text = "The current directory is {0}"+ path;
            if (!Directory.Exists(target)) 
            {
                Directory.CreateDirectory(target);
            }

            // Change the current directory.
            Environment.CurrentDirectory = (target);
            if (path.Equals(Directory.GetCurrentDirectory())) 
            {
              //  Console.WriteLine("You are in the temp directory.");
                Clocation.Text="You are in the temp directory.";
            } 
            else 
            {
               // Console.WriteLine("You are not in the temp directory.");
            Clocation.Text="You are not in the temp directory.";
            }
        } 
        catch (Exception e) 
        {
          //  Console.WriteLine("The process failed: {0}", e.ToString());
         Clocation.Text="The process failed: {0}"+e;
        }
    }


    protected void btnLocation_Click(object sender, EventArgs e)
    {
        Server.Transfer("currentLocation.html", true);
        

    }

 

 
    protected void Offers_Click(object sender, EventArgs e)
    {
        Offers.BackColor = System.Drawing.Color.Brown;
        Button9.BackColor = System.Drawing.Color.White;
        Button10.BackColor = System.Drawing.Color.White;
        btncontact.BackColor = System.Drawing.Color.White;
        
        if (theDiv.Visible == false)
        {
            theDiv.Visible = true;
            // PnlMain.Controls.Add(contactText);
          //  PnlMain.Controls.Add(new LiteralControl("Offers"));
           // theDiv.Text = "Offers";
        }
        else if (theDiv.Visible == true)
        {
       //  PnlMain.Visible = false;
          //  theDiv.Text = "Offers";
       }
    }
    protected void btnchat_Click(object sender, EventArgs e)
    {
       // Server.Transfer("ChatDefault.aspx", true);
      //  Response.Redirect("http://localhost:1836/ChatDefault.aspx");
        Response.Redirect("ChatDefault.aspx");


    }
    protected void btnout_Click(object sender, EventArgs e)
    {


        Session.Abandon();
        Response.Redirect("Default.aspx");
        lbname.Text = "";
    }
 
    public void technewsBar()
    {
        lblAnything.Text = lblAnything.Text + "    " + ("||") + " : " + tbpost.Text;
        
        tbpost.Text = "";
       // techId = techId + 1;
    }
    protected void btnpost_Click(object sender, EventArgs e)
    {
        technewsBar();
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Offers.BackColor = System.Drawing.Color.White;
        Button9.BackColor = System.Drawing.Color.White;
        Button10.BackColor = System.Drawing.Color.White;
        btncontact.BackColor = System.Drawing.Color.Brown;
        if (theDiv.Visible == false)
        {
            theDiv.Visible = true;
       // PnlMain.Controls.Add(contactText);
     // PnlMain.Controls.Add(new LiteralControl(contactText));
      //  PnlMain.Text = contactText;
       }
        else if (theDiv.Visible == true)
        {
      // PnlMain.Visible = false;
       //  PnlMain.Text = contactText;
      }
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Offers.BackColor = System.Drawing.Color.White;
        Button9.BackColor = System.Drawing.Color.White;
        Button10.BackColor = System.Drawing.Color.Brown;
        btncontact.BackColor = System.Drawing.Color.White;
        if (theDiv.Visible == false)
        {
            theDiv.Visible = true;
            // PnlMain.Controls.Add(contactText);
          //  PnlMain.Controls.Add(new LiteralControl("Blog"));
        //    PnlMain.Text = "Blog";
        }
        else if (theDiv.Visible == true)
      {
        //  PnlMain.Visible = false;
        //  PnlMain.Text = "Blog";
      }
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Offers.BackColor = System.Drawing.Color.White;
        Button9.BackColor = System.Drawing.Color.Brown;
        Button10.BackColor = System.Drawing.Color.White;
        btncontact.BackColor = System.Drawing.Color.White;
        if (theDiv.Visible == false)
        {
            theDiv.Visible = true;
            // PnlMain.Controls.Add(contactText);
          //  PnlMain.Controls.Add(new LiteralControl("Working"));
          //  PnlMain.Text = "Working";
        }
        else if (theDiv.Visible == true)
       {
         // PnlMain.Visible = false;
          // PnlMain.Text = "Working";
      }
    }
 
    protected void btnClearSesson_Click(object sender, EventArgs e)
    {
        Session.Abandon();
    }
    protected void btnLock_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.facebook.com/pages/Emergency-Rescue-app/684092021697287?ref=ts&fref=ts");
    }
    protected void btntreet_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://twitter.com/pashapapp");
    }
    protected void btngoogleplus_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://plus.google.com/u/0/b/105199438247747560056/105199438247747560056/about");
    }

    protected void btninstagram_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://instagram.com/");
    }
    protected void btnlinkedin_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.linkedin.com/hp/?dnr=8OQ5pnI-ea6olz7PVOJZD0kcv564gBXcwkvs&trk=nav_responsive_tab_home");
    }


    protected void btngoogleplay_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://play.google.com/store?hl=en");
    }
    protected void btnimagesend_Click(object sender, ImageClickEventArgs e)
    {
        if (fromemail.Text == String.Empty || TBNAME.Text == String.Empty || TBNUMBER.Text == String.Empty || fromcomments.Text == String.Empty)
        {
            commentdisplay.Text = "Please Fill All Fields ";
        }
        else
        {
            try
            {

                SendMail();
                commentdisplay.Text = "Your Comments after sending the mail";
                commentdisplay.Visible = true;
                subject = "";
                fromemail.Text = "";
                fromcomments.Text = "";
                TBNAME.Text = "";
                TBNUMBER.Text = "";
                commentdisplay.ForeColor = System.Drawing.Color.Green;////COLOUR

                commentdisplay.Text = "Message Sended ";
                // abc();
            }
            catch (Exception ex)
            {
                commentdisplay.ForeColor = System.Drawing.Color.Red;////COLOUR
                commentdisplay.Text = "You Failed! " + ex.Message;

            }
        }
    }
}