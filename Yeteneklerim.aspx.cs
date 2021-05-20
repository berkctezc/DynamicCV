using System;
using System.Linq;

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