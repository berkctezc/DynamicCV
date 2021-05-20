using System;
using System.Linq;

namespace DynamicCV
{
    public partial class Iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DbCVEntities db = new DbCVEntities();
            var mesajlar = db.TBL_ILETISIM.ToList();
            Repeater1.DataSource = mesajlar;
            Repeater1.DataBind();

        }
    }
}