using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DynamicCV
{
    public partial class Hakkimda : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DbCVEntities db = new DbCVEntities();
            Repeater1.DataSource = db.TBL_YETENEKLER.ToList();
            Repeater1.DataBind();
        }
    }
}