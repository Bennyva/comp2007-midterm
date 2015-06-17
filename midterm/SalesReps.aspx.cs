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
    public partial class SalesReps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if loading page for first time, populate the salesReps grid
            if (!IsPostBack)
            {
                GetSalesReps();
            }
        }

        protected void GetSalesReps()
        {
            using (comp2007Entities2 db = new comp2007Entities2())
            {
                //query the salesReps table using EF and LINQ
                var salesReps = from s in db.SalesReps
                           select s;

                //bind he result to the gridview
                grdSalesReps.DataSource = salesReps.ToList();
                grdSalesReps.DataBind();
            }
        }
    }
}