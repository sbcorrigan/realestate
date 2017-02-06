using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPages_ManageUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void gvUsers_SelectedIndexChanged(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser(gvUsers.SelectedDataKey.Values[1].ToString());
        String[] roles = Roles.GetRolesForUser(user.UserName);
        String role = roles[0];

        displayUserRole(role);
        lblError.Text = "";
        lblError.Visible = true;
    }

    private void displayUserRole(String role)
    {
        lstRoles.SelectedIndex = -1;
        if (lstRoles.Items[0].Value.Equals(role))
        {
            lstRoles.SelectedIndex = 0;
        }
        else
        {
            lstRoles.SelectedIndex = 1;
        }

        lstRoles.Visible = true;
        lblRoles.Visible = true;
    }

    protected void dsUserInfo_Updating(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Connection.Open();
        e.Command.Transaction = e.Command.Connection.BeginTransaction();
    }

    protected void dsUserInfo_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.Exception != null)
        {
            e.Command.Transaction.Rollback();
            e.ExceptionHandled = true;
            lblError.Text = "An error occurred during updating. ";
            lblError.Text += "User Name and Email must be unique and cannot be null. ";
            lblError.Visible = true;
        }
        else
        {
            e.Command.Transaction.Commit();
            gvUsers.DataBind();
            lblError.Text = "Record successfully updated.";
            lblError.Visible = true;
        }
    }

    protected void lstRoles_SelectedIndexChanged(object sender, EventArgs e)
    {
        String newRole = lstRoles.SelectedValue;
        String userName = gvUsers.SelectedDataKey.Values[1].ToString();
        Roles.AddUserToRole(userName, newRole);

        if (lstRoles.SelectedIndex == 0)
        {
            Roles.RemoveUserFromRole(userName, lstRoles.Items[1].Value);
        }
        else
        {
            Roles.RemoveUserFromRole(userName, lstRoles.Items[0].Value);
        }

        gvUsers.DataBind();
        dvUserInfo.DataBind();
        lblError.Text = "Role successfully updated.";
        
    }
}