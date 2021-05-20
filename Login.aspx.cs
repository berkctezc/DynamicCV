using System;
using System.Linq;

namespace DynamicCV
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private DbCVEntities db = new DbCVEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.TBL_ADMIN
                where x.KULLANICIAD == TextBox1.Text && x.SIFRE == TextBox2.Text
                select x;
            if (sorgu.Any())
            {
                Response.Redirect("Iletisim.aspx");
            }
            else
            {
                Response.Write("Hatalı Kullanıcı adı veya şifre");
            }
        }
    }
}