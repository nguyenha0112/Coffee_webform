using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webbanhang
{
    public partial class dangki : System.Web.UI.Page
    {
        ketnoi ketnoi = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            string tentaikhoan = Texttk.Text;
            string matkhau = Textpass.Text;
            string sdt = Textsdt.Text;
            string sql = "insert into KHACHHANG values ('" + tentaikhoan + "','" + matkhau + "',\'user\','"+sdt+"')";
            int kq = ketnoi.suadulieu(sql);
            if(kq > 0)
            {
                Response.Write("<script>alert('Đăng Kí Thành Công')</script>");
            }
            Response.Redirect("dangnhap.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("dangnhap.aspx");
        }
    }
}