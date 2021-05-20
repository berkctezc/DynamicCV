using System;
using System.Linq;

namespace DynamicCV
{
    public partial class Istatistik : System.Web.UI.Page
    {
        private DbCVEntities db = new DbCVEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var maxTalent = db.TBL_YETENEKLER.Max(y => y.DERECE);

            Label1.Text = db.TBL_YETENEKLER.Count().ToString();
            Label2.Text = db.TBL_ILETISIM.Count().ToString();
            Label3.Text = Math.Round((decimal)db.TBL_YETENEKLER.Average(x => x.DERECE), 2).ToString();
            Label4.Text = maxTalent.ToString();
            Label5.Text = db.TBL_YETENEKLER.Where(x=>x.DERECE == maxTalent).FirstOrDefault().YETENEK;
        }
    }
}