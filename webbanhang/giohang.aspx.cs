using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webbanhang
{
    public partial class giohang : System.Web.UI.Page
    {
        ketnoi ketnoi = new ketnoi();   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) { return; }
            string tendangnhap = Session["taikhoan"] + "";
            string sql = "SELECT HANG.MAHANG, TENHANG, CHITIET.SOLUONG, DONGIA, HINHANH FROM HANG INNER JOIN CHITIET ON HANG.MAHANG = CHITIET.MAHANG WHERE TAIKHOAN ='"+tendangnhap+"'";
            GridView1.DataSource = ketnoi.docdulieu(sql);
            GridView1.DataBind();
        }

        
    }
}