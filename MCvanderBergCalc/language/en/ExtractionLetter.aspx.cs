using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MCvanderBergCalc.Models;

namespace MCvanderBergCalc.language.en
{
    public partial class ExtractionLetter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int userid = 0;
                string v = Request.QueryString["id"];
                if (v != null)
                {
                    userid = Convert.ToInt32(v);
                }

                if (userid > 0)
                {
                    mcvanderbergDataContext myconnection = new mcvanderbergDataContext();

                    var extracts = myconnection.GetExtractionData(userid);

                    foreach (var extract in extracts)
                    {
                        litContent.Text = extract.Content;
                        litHeading.Text = extract.Heading;
                    }

                }
            }
        }
    }
}
