﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webbanhang
{
    public partial class home : System.Web.UI.Page
    {
        ketnoi ketnoi = new ketnoi();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "select * from HANG";
            DataList1.DataSource = ketnoi.docdulieu(sql);
            DataList1.DataBind();
            
        }
       


    }
}