using System;


namespace DynamicCV
{
    public partial class YetenekGuncelle : System.Web.UI.Page
    {
        private DbCVEntities db = new DbCVEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["ID"]);
            if (Page.IsPostBack==false)
            {
            var deger = db.TBL_YETENEKLER.Find(x);
            TextBox1.Text = deger.YETENEK;
            TextBox2.Text = Convert.ToString(deger.DERECE);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["ID"]);
            var deger = db.TBL_YETENEKLER.Find(x);
            deger.YETENEK = TextBox1.Text;
            deger.DERECE = Convert.ToByte(TextBox2.Text);
            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");
        }
    }
}