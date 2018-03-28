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
        Session["Username"] = txtUsername.Text;
        Session["Expire"] = false;
    }


    protected void username_Validate(object sender, ServerValidateEventArgs args)
    {
        if (txtUsername.Text.ToLower()[0] >= 'a' && txtUsername.Text.ToLower()[0] <= 'z') 
            args.IsValid = true;
        if (txtUsername.Text.ToLower()[0] >= '0' && txtUsername.Text.ToLower()[0] <= '9') 
            args.IsValid = false;

        String specialcase = "~!@#$%^&*()_+{}[]\\|;':\"<>,./?";
        foreach(char c in specialcase)
        {
            if (txtUsername.Text.Contains(c)) args.IsValid = false;
        }
    }

    protected void password_Validate(object sender, ServerValidateEventArgs args)
    {
        if (Password.Text.Length < 8 || Password.Text.Length > 16) args.IsValid = false;
        if (Password.Text.ToLower()[0] < 'a' || Password.Text.ToLower()[0] > 'z') args.IsValid = false;

        if (!(Password.Text.Contains('*') || Password.Text.Contains('!'))) args.IsValid = false;
        

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Server.Transfer("LoginSuccess.aspx");
        }
    }
}
