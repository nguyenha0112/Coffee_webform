using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webbanhang
{
    public partial class Chitiet : System.Web.UI.Page
    {
        ketnoi ketnoi = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string mahang = Request.QueryString["mahang"];
            Console.WriteLine(mahang);
            if(mahang != "")
                {
                string sql = "select * from HANG where MAHANG= '"+mahang+"'" ;
                DataTable dt = ketnoi.docdulieu(sql);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
            
       
        }

        protected void btMua_Click(object sender, EventArgs e)
        {
            string tendangnhap = Session["taikhoan"] + "";
            if(tendangnhap != "")
            {
                string mahang = ((Button)sender).CommandArgument;
                Button bt_mua =(Button)sender;
                DataListItem item = (DataListItem)bt_mua.Parent;
                TextBox txtSL = (TextBox)item.FindControl("txtSoLuong");
                string soluong = txtSL.Text;
                string sqlHang = "select * from HANG where TAIKHOAN ='" + tendangnhap + "' and MAHANG=" + mahang;
                DataTable dt = ketnoi.docdulieu(sqlHang);

                string sql = "";
                if (dt != null && dt.Rows.Count > 0)
                {
                    sql = "update CHITIET Set SOLUONG=SOLUONG+" + soluong + " where TAIKHOAN='" + tendangnhap + "' and MAHANG=" + mahang;
                    string updatehang = "update HANG set SOLUONG = SOLUONG-"+soluong+"";
                    int kq = ketnoi.suadulieu(sql);
                    ketnoi.suadulieu(updatehang);
                    lbThongbao.Text = "Thành Công";
                }
                else
                {
                    sql = "insert into CHITIET values('" + tendangnhap + "','" + mahang + "'," + soluong + ")";
                    string updatehang = "update HANG set SOLUONG = SOLUONG-" + soluong + "";
                    int kq = ketnoi.suadulieu(sql);
                    ketnoi.suadulieu(updatehang);
                    lbThongbao.Text = "Thành Công";
                }
              
                
            }
            else
            {
                lbThongbao.Text = "Bạn chưa đăng nhập";
            }
        }
        }
    }
