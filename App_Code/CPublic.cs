using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// CPublic 的摘要说明
/// </summary>
public class CPublic
{
	public CPublic()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    public static DataTable getStudent(string zhid, string Pwd)
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["data"].ConnectionString);

        string sql = "SELECT * FROM guke WHERE zhid=@zhid";

        if (Pwd != null)
            sql += " AND Pwd=@Pwd";

        SqlCommand cmd = new SqlCommand(sql, cn);

        cmd.Parameters.Add("@zhid", SqlDbType.NVarChar).Value = zhid;

        if (Pwd != null)
            cmd.Parameters.Add("@Pwd", SqlDbType.NVarChar).Value = Pwd;

        DataSet ds = new DataSet();

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        cn.Open();

        da.Fill(ds);

        cn.Close();

        return ds.Tables[0];
    }

}