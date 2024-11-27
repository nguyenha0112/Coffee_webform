using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webbanhang
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string tendangnhap = Session["taikhoan"] + "";
            if (tendangnhap != "")
            {
                Button1.Text = tendangnhap;
                Button2.Text = "Đăng Xuất";
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Remove("taikhoan");
            Response.Redirect("dangnhap.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string tendangnhap = Session["taikhoan"] + "";
            if (tendangnhap == "")
            {
                Response.Redirect("dangnhap.aspx");
            }
        }
    }
}