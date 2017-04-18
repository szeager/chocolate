using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["name"] != null)
            {
                dlu.Visible = false;
                zce.Visible = false;
                dlu.ResolveUrl( "Q1.aspx");
                hy.Visible = true;
                hy.Text = "欢迎：" + Session["name"];
            }
        }
    }
}
