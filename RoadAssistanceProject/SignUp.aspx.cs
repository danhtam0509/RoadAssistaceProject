using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e, ServerValidateEventArgs args)
    {
        ValidateCheckBox(sender, args);
    }

    protected void Cancel(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }

    protected void ValidateCheckBox(object sender, ServerValidateEventArgs args)
    {
        args.IsValid = TermOfServices.Checked ? true : false;

    }

    protected void Submit(object sender, EventArgs e)
    {
        if(IsValid)
        Response.Redirect("CreateAccountSuccess.aspx");
    }
}