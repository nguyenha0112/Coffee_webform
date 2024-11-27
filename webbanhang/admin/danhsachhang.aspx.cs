using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webbanhang.admin
{
    public partial class danhsachhang : System.Web.UI.Page
    {
        ketnoi ketnoi = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) { return; }
            string sql = "select * from HANG";
            GridView1.DataSource = ketnoi.docdulieu(sql) ;
            GridView1.DataBind();
        }
    }
}