using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webbanhang.admin
{
    public partial class danhsachtaikhoan : System.Web.UI.Page
    {ketnoi ketnoi = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "select * from KHACHHANG";
            GridView1.DataSource = ketnoi.docdulieu(sql);
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string taikhoan = GridView1.Rows[e.RowIndex].Cells[0].Text;
            string sqlxoa = "delete * from KHACHHANG where TAIKHOAN ='" + taikhoan + "'";
            ketnoi.suadulieu(sqlxoa);
            LoadData();
        }
        protected void LoadData()
        {
            string Sqlhang = "SELECT * FROM KHACHHANG";
            DataTable dt = ketnoi.docdulieu(Sqlhang);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string taikhoan = Txttaikhoan.Text;
            string matkhau = Txtmatkhau.Text;
            string loaitaikhoan = DropDownList1.Text;
            string sdt = Txtsdt.Text;

            string sqltaikhoan = "select * from KHACHHANg where TAIKHOAN='" + taikhoan + "'";
            DataTable dt = ketnoi.docdulieu(sqltaikhoan);
            if( dt != null && dt.Rows.Count > 0)
            {
                Label2.Text = "đã có tài khoản này";
            }
            string sql = "insert into KHACHHANG values('" + taikhoan + "','" + matkhau + "','" + loaitaikhoan+ "','"+sdt +"')";
            ketnoi.suadulieu(sql);
            LoadData();
        }

        
    }
}