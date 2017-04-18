using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wangjimima : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("shouye.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var q = from c in dc.guke where c.zhid == TextBox1.Text.ToString() && c.phone == TextBox2.Text.ToString() select c;
        foreach (var a in q)
        {
            a.pwd = TextBox3.Text.ToString();
        }
        Response.Write(" <script>alert('操作成功！');window.location.href='denglu.aspx';</script>");
    }
}