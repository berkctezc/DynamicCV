using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DynamicCV
{
    public partial class YeniYetenek : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private DbCVEntities db = new DbCVEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            TBL_YETENEKLER t = new TBL_YETENEKLER();
            t.YETENEK = TextBox1.Text;
            t.DERECE = Convert.ToByte(TextBox2.Text);
            db.TBL_YETENEKLER.Add(t);
            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");
        }
    }
}