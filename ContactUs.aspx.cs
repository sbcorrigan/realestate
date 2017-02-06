using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ThankYou.aspx");
    }
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Context.User.Identity.IsAuthenticated)
        {
            Page.Theme = "Blue";
        }
        else
        {
            Page.Theme = "Gray";
        }

    }
}