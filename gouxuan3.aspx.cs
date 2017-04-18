using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class gouxuan3 : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Write("<script>alert('请登录');window.location.href='denglu.aspx';</script>");
            return;
        }
        if(!IsPostBack)
        {
            
            SP();
        }
    }
    private void SP()
    {
        DataClassesDataContext dc = new DataClassesDataContext();
        var a = from c in dc.chanpin where c.cpid.ToString() == Request["cpid"].ToString() select c;
        foreach(var q in a)
        {
            Literal1.Text = q.cpmc;
            Literal2.Text = q.cpdj.ToString()+"元";
            
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox4.Text.ToString() ==""||TextBox5.Text.ToString()=="")
        {
            Response.Write("   <script>  window.alert('订单信息不能为空！')      </script>      ");
            return;
        }
        DataClassesDataContext dc = new DataClassesDataContext();
        var a = from c in dc.chanpin where c.cpid.ToString() == Request["cpid"].ToString() select c;
        Panel1.Visible = false;
        Button1.Visible = false;
        foreach (var q in a)
        {
            Literal3.Text ="总价："+(q.cpdj * Convert.ToInt32(DropDownList1.SelectedValue)).ToString();
        }
        Button2.Visible = true;
        Button1.Visible = false;
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        var a = DateTime.Now.ToString("yyyyMMddhhmmss");


        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["data"].ConnectionString);

        string sql = "INSERT dingdan(cpmc,ddid,dizhi,phone,gmsj,gmsl,zhid)";
        sql += " VALUES(@cpmc,@ddid,@dizhi,@phone,@gmsj,@gmsl,@zhid)";

        SqlCommand cmd = new SqlCommand(sql, cn);

        cmd.Parameters.Add("@cpmc", SqlDbType.NVarChar).Value = Literal1.Text;
        cmd.Parameters.Add("@ddid", SqlDbType.NVarChar).Value = Request["cpid"] + a;
        cmd.Parameters.Add("@dizhi", SqlDbType.NVarChar).Value = TextBox4.Text;
        cmd.Parameters.Add("@phone", SqlDbType.NVarChar).Value = TextBox5.Text;
        cmd.Parameters.Add("@gmsj", SqlDbType.NVarChar).Value = DateTime.Now;
        cmd.Parameters.Add("@gmsl", SqlDbType.NVarChar).Value = Convert.ToInt32(DropDownList1.SelectedValue);
        cmd.Parameters.Add("@zhid", SqlDbType.NVarChar).Value = Session["zhid"].ToString();
        cmd.Parameters.Add("@cpid", SqlDbType.NVarChar).Value = Request["cpid"].ToString();
        try//尝试执行
        {
            cn.Open();

            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('购买成功！');window.location.href='dingdan.aspx';</script>");
        }
        catch
        {
            Response.Write("   <script>  window.alert('购买失败！')      </script>      ");
        }
        finally
        {
            cn.Close();
        }


    }
}