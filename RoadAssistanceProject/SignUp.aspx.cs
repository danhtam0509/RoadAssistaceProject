﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["UserName"] = UserName.Text;
        Session["Expire"] = false;
    }

    protected void Cancel(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void btnCreate_Click(object sender, EventArgs e)
    {
        if (IsValid)
            Server.Transfer("CreateAccountSuccess.aspx");
    }
}