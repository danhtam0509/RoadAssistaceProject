using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FeedbackForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (chkYes.Checked == false && chkNo.Checked == false)
        {
            args.IsValid = false;
        }
        else if (chkYes.Checked == true && chkNo.Checked == true)
        {
            args.IsValid = false;
        }
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        Server.Transfer("FBConfirm.aspx");
    }
}
