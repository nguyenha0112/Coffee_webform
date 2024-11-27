using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webbanhang.admin
{
    public partial class themhang : System.Web.UI.Page
    {
        ketnoi ketnoi = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) { return; }
            string sql = "select * from HANG";
            GridView1.DataSource = ketnoi.docdulieu(sql);
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string tenhang = Txttenhang.Text;
            string loaihang = Txtloaihang.Text;
            int soluong = int.Parse(Txtsoluong.Text);
            int dongia = int.Parse(Txtdongia.Text);
            string ghichu = Txtghichu.Text;
            string hinhanh = "";
            if (FileUpload1.HasFile) 
            {
                hinhanh = FileUpload1.FileName; 
            }
            else
            {
                hinhanh = "item.png"; 
            }


            string Sqlhang = "select * from HANG";
            DataTable dt = ketnoi.docdulieu(Sqlhang);
            string mahang = "MH" + (dt.Rows.Count+1);

            string sql = "insert into HANG values('"+mahang+"','"+tenhang+"','"+loaihang+"',"+soluong+","+dongia+",'"+ghichu+"','"+hinhanh+"')";
            ketnoi.suadulieu(sql);
            
            GridView1.DataSource=ketnoi.docdulieu(Sqlhang);
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string mahang = GridView1.Rows[e.RowIndex].Cells[0].Text;
            string sqlxoa = "delete * from HANG where MAHANG ='"+mahang+"'";
            ketnoi.suadulieu(sqlxoa);
            LoadData();
        }
        protected void LoadData()
        {
            string Sqlhang = "SELECT * FROM HANG";
            DataTable dt = ketnoi.docdulieu(Sqlhang);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}