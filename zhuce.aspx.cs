using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class zhuce : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["data"].ConnectionString);
        string sql = "insert guke(zhid,name,pwd,phone) values(@zhid,@name,@pwd,@phone)";
      //  if (TextBox1.ToString() != "" && TextBox2.ToString() != "" && TextBox3.ToString() != "" && TextBox4.ToString() != "" && TextBox4.MaxLength < 12)
      //  {
            SqlCommand cmd = new SqlCommand(sql, cn);
            cmd.Parameters.Add("@zhid", SqlDbType.NVarChar).Value = TextBox1.Text;
            cmd.Parameters.Add("@pwd", SqlDbType.NVarChar).Value = TextBox2.Text;
            cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = TextBox3.Text;
            cmd.Parameters.Add("@phone", SqlDbType.NVarChar).Value = TextBox4.Text;

            try
            {
                cn.Open();

                cmd.ExecuteNonQuery();

                Response.Write(" <script>alert('注册成功！');window.location.href='denglu.aspx';</script>");
               

            }
            catch (Exception ex)
            {
                //Response.Write(ex.Message);
                Response.Write("   <script>  window.alert('注册失败！')      </script>      ");
            }
        finally
            {
                cn.Close();
            }
      //  }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("shouye.aspx");
    }
}