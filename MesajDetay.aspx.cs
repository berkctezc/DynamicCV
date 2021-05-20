using System;

namespace DynamicCV
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DbCVEntities db = new DbCVEntities();
            int x = int.Parse(Request.QueryString["ID"]);
            var mesaj = db.TBL_ILETISIM.Find(x);

            TextGonderen.Text = mesaj.ADSOYAD;
            TextKonu.Text = mesaj.KONU;
            TextMail.Text = mesaj.MAIL;
            TextMesaj.Text = mesaj.MESAJ;
        }
    }
}