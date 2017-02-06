using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void wizCreateUser_CreatedUser(object sender, EventArgs e)
    {
        if (!Roles.RoleExists("user"))
        {
            Roles.CreateRole("user");
        }
        Roles.AddUserToRole(wizCreateUser.UserName, "user");
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