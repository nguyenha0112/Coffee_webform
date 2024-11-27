using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webbanhang.admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string tendangnhap = Session["taikhoan"] + "";
            if (tendangnhap != "")
            {
                Label1.Text = tendangnhap;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Remove("taikhoan");
            Response.Redirect("../dangnhap.aspx");
        }
    }
}