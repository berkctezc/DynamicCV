using System;

namespace DynamicCV
{
    public partial class YetenekSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DbCVEntities db = new DbCVEntities();
            int x = Convert.ToInt32(Request.QueryString["ID"]);
            var yetenek = db.TBL_YETENEKLER.Find(x);
            db.TBL_YETENEKLER.Remove(yetenek);
            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");
        }
    }
}