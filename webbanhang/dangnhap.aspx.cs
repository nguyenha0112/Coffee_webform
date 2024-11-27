using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webbanhang
{
    public partial class dangnhap : System.Web.UI.Page
    {
        ketnoi ketnoi = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string taikhoan = Texttk.Text;
            string pass = Textpass.Text;
            string sql = "select * from KHACHHANG WHERE TAIKHOAN=  '" +taikhoan+ "'and  MATKHAU='"+pass+ "' and LOAITAIKHOAN = \'user\'";
            DataTable dt = ketnoi.docdulieu(sql);
            if(dt != null && dt.Rows.Count >0) {
                Session["taikhoan"] = taikhoan;
                Response.Redirect("trangchu.aspx");
            }
            else
            {
                sql = "select * from KHACHHANG WHERE TAIKHOAN=  '" + taikhoan + "'and  MATKHAU='" + pass + "' and LOAITAIKHOAN = \'admin\'";
                dt = ketnoi.docdulieu(sql);
                if (dt != null && dt.Rows.Count > 0)
                {
                    Session["taikhoan"] = taikhoan;
                    Response.Redirect("admin/danhsachdonhang.aspx");
                }
                else
                {
                    Label1.Text = "tai khoan hoac mat khau khong chinh xac";
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("dangki.aspx");
        }
    }
}