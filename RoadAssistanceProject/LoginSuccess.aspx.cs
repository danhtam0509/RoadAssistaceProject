using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (PreviousPage != null)
        {
            TextBox txtUserName = (TextBox) PreviousPage.FindControl("txtUsername");
            lblUserName.Text = "Username";
            lblUserName0.Text = "Username";

        }
    }
}