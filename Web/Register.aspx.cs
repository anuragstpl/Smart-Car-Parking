using CarParkServices;
using CarParkServices.UnitOfWork;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PasswordManagerWeb
{
    public partial class Register : System.Web.UI.Page
    {
        UnitOfWork uow = new UnitOfWork();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            using (uow = new UnitOfWork())
            {
                try
                {
                    AdminUser adminUser = new AdminUser();
                    adminUser.Email = txtEmail.Text;
                    adminUser.Name = txtFName.Text;
                    adminUser.Password = txtPassword.Text;
                    adminUser.Username = txtUserName.Text;
                    adminUser.UserType = ddlUsers.SelectedItem.Text;
                    uow.AdminUserRepository.Insert(adminUser);
                    uow.Save();
                    Response.Write("<script>alert('Admin user saved successfully.');</script>");
                }
                catch
                {
                    Response.Write("<script>alert('Some error occured.');</script>");
                }

            }
        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}