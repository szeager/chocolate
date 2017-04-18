using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gouxuan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            GW();
        }
    }
    private void GW()
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var a = from c in dc.chanpin orderby c.cpid descending select c;
        string cp = "";
        foreach(var q in a)
        {
            cp += "<div class='xcbox' ><div class='xcleft'><a href='gouxuan2.aspx?cpid=" + q.cpid + "'>";
            cp += "<img src='" + q.cptp + "'  border='0' /></a></div><div class='xcright'>" + q.cpmc + "</div></div>";
        }
        this.Literal1.Text = cp;
    }
}