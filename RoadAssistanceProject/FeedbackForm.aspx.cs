using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class FeedbackForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
       
        if(rdYes.Checked==false && rdNo.Checked == false)
        {
            args.IsValid = false;
        }
    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        var cmt = txtComment.Text;
        var rating = rdRating.SelectedValue;
        var date = DateTime.Now.ToString("mm/dd/yyyy");
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string postFB = "INSERT INTO Feedback(comment, rating, date) VALUES('" + cmt + "', '" + rating + "', '" + date + "')";
            SqlCommand comd = new SqlCommand(postFB, conn);
            comd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("~/FBConfirm.aspx");
        }
    }
}
