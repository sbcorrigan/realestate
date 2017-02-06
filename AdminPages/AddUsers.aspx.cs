﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPages_AddUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void wizCreateUser_CreatedUser(object sender, EventArgs e)
    {
        RadioButtonList rbl = (RadioButtonList)CreateUserWizardStep1.ContentTemplateContainer.FindControl("lstRoles");
        String role = rbl.SelectedValue;
        if (!Roles.RoleExists(role))
        {
            Roles.CreateRole(role);
        }
        Roles.AddUserToRole(wizCreateUser.UserName, role);
    }
}