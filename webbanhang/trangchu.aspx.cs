using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webbanhang
{
    public partial class trangchu : System.Web.UI.Page
    {
        ketnoi ketnoi = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) { return; }
            string sql = "select * from HANG";
            DataTable dt = ketnoi.docdulieu(sql);
           
            
        }
    }
}