using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webbanhang
{
    public partial class tra : System.Web.UI.Page
    {
        ketnoi ketnoi = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "select * from HANG where LOAIHANG= \"Trà\" ";
            DataList1.DataSource = ketnoi.docdulieu(sql);
            DataList1.DataBind();
        }
    }
}