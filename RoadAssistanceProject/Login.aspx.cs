using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// required for Identity and OWIN Security
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Username"] = txtUserName.Text;
        Session["Expire"] = false;
    }


    protected void username_Validate(object sender, ServerValidateEventArgs args)
    {
        if (txtUserName.Text.ToLower()[0] >= 'a' && txtUserName.Text.ToLower()[0] <= 'z') 
            args.IsValid = true;
        if (txtUserName.Text.ToLower()[0] >= '0' && txtUserName.Text.ToLower()[0] <= '9') 
            args.IsValid = false;

        String specialcase = "~!@#$%^&*()_+{}[]\\|;':\"<>,./?";
        foreach(char c in specialcase)
        {
            if (txtUserName.Text.Contains(c)) args.IsValid = false;
        }
    }

    protected void password_Validate(object sender, ServerValidateEventArgs args)
    {
        if (txtPassword.Text.Length < 8 || txtPassword.Text.Length > 16) args.IsValid = false;
        if (txtPassword.Text.ToLower()[0] < 'a' || txtPassword.Text.ToLower()[0] > 'z') args.IsValid = false;

        if (!(txtPassword.Text.Contains('*') || txtPassword.Text.Contains('!'))) args.IsValid = false;
        

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        // create new userStore and userManager objects
        var userStore = new UserStore<IdentityUser>();
        var userManager = new UserManager<IdentityUser>(userStore);

        // search for and create a new user object 
        var user = userManager.Find(txtUserName.Text, txtPassword.Text);

        // if a match is found for the user...
        if (user != null)
        {
            // authenticate and login our user 
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

            // sign in the user 
            authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = false }, userIdentity);

            // redirect the user 
            Response.Redirect("~/AuthenticatedPages/LoginSuccess.aspx");
        }
        else // no match was found
        {
            StatusLabel.Text = "Invalid Username or Password";
            AlertFlash.Visible = true;
        }
    }
}
