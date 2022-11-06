using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CarParkServices.UnitOfWork;
using CarParkServices;

namespace PasswordManagerWeb
{
    public partial class AccountManagement : System.Web.UI.Page
    {
        UnitOfWork uow = new UnitOfWork();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindAccounts();
            }
        }

        private void BindAccounts()
        {
            using (uow = new UnitOfWork())
            {
                List<User> lstPatient = uow.UserRepository.Get().ToList();
                lstAccount.DataSource = lstPatient;
                lstAccount.DataBind();
            }
        }

        protected void lstAccount_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            (lstAccount.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            this.BindAccounts();
        }

       

        protected void lstAccount_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {

        }

        protected void lstAccount_ItemEditing(object sender, ListViewEditEventArgs e)
        {

        }
    }
}