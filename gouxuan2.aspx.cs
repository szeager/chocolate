using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gouxuan2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["cpid"] == null)
        {
            Response.Redirect("gouxuan.aspx");
        }
        if(!IsPostBack)
        {
            if(Session["name"]==null)
            {
                Response.Write("<script>alert('请登录');window.location.href='denglu.aspx';</script>");
                return;
            }
            else
            {
                chanpin();
            }
        }
    }
    private void chanpin()
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var a = from c in dc.chanpin where c.cpid.ToString() == Request["cpid"].ToString() select c;
        string cp = "";
        foreach(var z in a)
        {
            cp += "<div class='box'><div>";
            cp += "<img src='" + z.cptp + "'/></div>";
            cp += "单价：" + z.cpdj + "元  <br />产品介绍：" + z.cpjs + "</div>";
        }
        this.literal1.Text = cp;
    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {

        Response.Redirect("gouxuan3.aspx?cpid=" + Request["cpid"]);
    }
}