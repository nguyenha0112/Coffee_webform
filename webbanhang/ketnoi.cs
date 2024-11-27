using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;

namespace webbanhang
{
    public class ketnoi
    {
        OleDbConnection con;

        public void moketnoi()
        {
            string sqlcon = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Admin\\Desktop\\workspace\\c#\\webbanhang\\webbanhang\\App_Data\\webbanhang.mdb";
            con = new OleDbConnection(sqlcon);
            con.Open();
        }
        public void dongketnoi()
        {
            if(con!=null &&  con.State == ConnectionState.Open) con.Close();
          
        }
        public DataTable docdulieu(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                moketnoi();
                OleDbDataAdapter da = new OleDbDataAdapter(sql, con);
                da.Fill(dt);
            }
            catch
            {
                dt = null;
            }
            finally
            {
                dongketnoi();   
            }

            return dt;
        }
        public int suadulieu(string sql)
        {
            int ketqua = 0;
            try
            {
                moketnoi();
                OleDbCommand cm = new OleDbCommand(sql, con);
                ketqua  = cm.ExecuteNonQuery();  
            }
            catch
            {
                ketqua = 0;
            }
            finally
            {
                dongketnoi();
            }

            return ketqua;
        }


    }
}