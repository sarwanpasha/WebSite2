﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChatDefault : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Lb1.Font.Size = FontUnit.XLarge;
        Lb2.Font.Size = FontUnit.XLarge;
    }
 
    protected void btnjoin_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChatWin.aspx?Channel=" + tbchannel.Text + "&User=" + tbusername.Text);

    }
}