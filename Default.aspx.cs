using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DynamicCV
{
    public partial class Default : System.Web.UI.Page
    {
        private DbCVEntities db = new DbCVEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.TBLHAKKIMDAs.ToList();
            Repeater1.DataBind(); 
            Repeater2.DataSource = db.TBLHAKKIMDAs.ToList();
            Repeater2.DataBind();
            Repeater3.DataSource = db.TBLHAKKIMDAs.ToList();
            Repeater3.DataBind();     
            Repeater4.DataSource = db.TBL_YETENEKLER.ToList();
            Repeater4.DataBind();
        }
    }
}