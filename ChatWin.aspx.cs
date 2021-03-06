using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace SuperJockey
{
	/// <summary>
	/// Summary description for ChatWin.
	/// </summary>
	public class ChatWin : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.TextBox TB_ToSend;
		protected System.Web.UI.WebControls.Button BT_Send;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			if ( Page.IsPostBack == false )
			{
				if ( Request.Params["Channel"] != null )
					Session["ChatChannel"] = Request.Params["Channel"].ToString();
				else
					Session["ChatChannel"] = "1";

				
			}
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{ 
			InitializeComponent();
			base.OnInit(e);
		} 
		private void InitializeComponent()
		{    
			this.BT_Send.Click += new System.EventHandler(this.BT_Send_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		public string GetChatPage()
		{
			return("TheChatScreenWin.aspx");
		}

		private void BT_Send_Click(object sender, System.EventArgs e)
		{
			string sChannel = "";
			string sUser = "";

			if ( Request.Params["Channel"] != null )
				sChannel = Request.Params["Channel"].ToString();
			else
				sChannel = "1";

			if ( Request.Params["User"] != null )
				sUser = Request.Params["User"].ToString();
			else
			{
				Random pRan = new Random();
				int iNum = pRan.Next(9);
				sUser = "Annonymouse" + iNum;
			}

			
			if ( TB_ToSend.Text.Length > 0)
			{
				PageModule.Chat.AddMessage(sChannel,
					sUser,
					TB_ToSend.Text);
				
				TB_ToSend.Text = "";		
			}
		}
	}
}
