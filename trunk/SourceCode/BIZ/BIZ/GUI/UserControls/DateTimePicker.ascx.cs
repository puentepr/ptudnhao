using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BIZ.GUI.UserControls
{
    public partial class DateTimePicker : System.Web.UI.UserControl
    {
        public void setDate(string date)
        {
            TextBox1.Text = date;
        }
        public string getDate()
        {
            return TextBox1.Text;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            this.TextBox1.Text = Calendar1.SelectedDate.ToString();
            this.Calendar1.Visible = false;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            this.Calendar1.Visible = !this.Calendar1.Visible;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            this.Calendar1.Visible = !this.Calendar1.Visible;
        }
    }
}