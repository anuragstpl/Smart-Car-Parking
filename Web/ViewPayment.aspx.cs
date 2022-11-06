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
    public partial class ViewPayment : System.Web.UI.Page
    {
        UnitOfWork uow = new UnitOfWork();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void BindPayment()
        {
            using (uow = new UnitOfWork())
            {
                List<UserPayment> lstPatient = uow.UserPaymentRepository.Get().Where(x => x.UserID == Convert.ToInt32(txtID.Text)).ToList();
                lstAccount.DataSource = lstPatient;
                lstAccount.DataBind();
            }
        }

        protected void btnViewHistory_Click(object sender, EventArgs e)
        {
            try
            {
                BindPayment();
            }
            catch 
            {
                Response.Write("<script>alert('Some error occured');</script>");
            }
        }

        protected void lstAccount_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {

        }
    }
}