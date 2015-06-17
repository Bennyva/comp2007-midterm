using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//reference the ef models
using midterm.Models;
using System.Web.ModelBinding;

namespace midterm
{
    public partial class SalesRep : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

     

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //use EF to connect to SQL server
            using (comp2007Entities2 db = new comp2007Entities2())
            {
                //use the salesReps model to save the new record
                Models.SalesRep sr = new Models.SalesRep();
                sr.FirstName = txtFirstName.Text;
                sr.LastName = txtLastName.Text;
                sr.Province = txtProvince.Text;
                sr.Revenue = Convert.ToDecimal(txtRevenue.Text);
                sr.Expenses = Convert.ToDecimal(txtExpenses.Text);
                sr.NetIncome = sr.Revenue - sr.Expenses;
                if (chkBoxManager.Checked == true)
                sr.Manager = true;
                sr.HireDate = Convert.ToDateTime(txtHireDate.Text);
                
                db.SalesReps.Add(sr);
                db.SaveChanges();
                //redirect to the updated salesReps page
                Response.Redirect("SalesReps.aspx");
            }
        }
    }
}