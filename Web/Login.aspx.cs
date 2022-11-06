using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer;
using System.Configuration;
using System.Net.Mail;
using CarParkServices.UnitOfWork;
using CarParkServices;

namespace PasswordManagerWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            using (UnitOfWork uow = new UnitOfWork())
            {
                AdminUser user = uow.AdminUserRepository.Get().Where(u => u.Password == txtPassword.Text
                                                                       && u.Username == txtUsername.Text
                                                                  ).FirstOrDefault();
                if (user != null)
                {
                    Session["UserID"] = user.AdminUserID;
                    Session["Name"] = user.Name;
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect userid or password');</script>");
                }
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}