using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class denglu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("shouye.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["data"].ConnectionString);
        DataTable dt = CPublic.getStudent(TextBox4.Text.Trim(), TextBox5.Text.Trim());
        if (dt.Rows.Count == 1)
        {
            //记住Cookie  
            //Ctrl+K+D格式化程序   Ctrl+X删除一行
           // Response.Cookies["zhid"].Value = TextBox4.Text.Trim();

            DataClassesDataContext dc = new DataClassesDataContext();
            var a = from c in dc.guke where c.zhid.ToString() == TextBox4.Text.ToString() select c;
            foreach (var q in a)
            {
                Session["name"] = q.name;
                Session["zhid"] = q.zhid;
            }
            

            //密码验证成功，跳转到主页
            Response.Redirect("shouye.aspx");
        }
        else
        {
            //密码验证失败
            Response.Write("   <script>  window.alert('登录失败')      </script>      ");
        }
    }
}