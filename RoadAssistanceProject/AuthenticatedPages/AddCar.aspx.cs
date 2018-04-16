using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddCar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["CarName"] = CarName.Text;
        Session["Expire"] = false;
    }

    protected void Cancel(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void btnCreate_Click(object sender, EventArgs e)
    {
        if (IsValid)
            Response.Write("<script>alert('Vehicle Added!')</script>");
            Server.Transfer("Services.aspx");
    }
}