using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String session_string = Session["Username"] as String;
        if (!String.IsNullOrEmpty(session_string))
        {
            Session["Username"] = "";
            Session.Clear();
            Response.Redirect("~/Login.aspx");
        }
    }
}