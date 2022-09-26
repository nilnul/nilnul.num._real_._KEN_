using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.num.real._Ken._web.rhiemannHypothesis.claims.eulerProductionEqZeta._ctrs
{
	public partial class OneMinusFrac_codeBehind : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			 this.InverseOfNToS_toolboxData.n= this.n.ToString();

		}


	[Browsable(true),
Category("Appearance"),
DefaultValue(1),
Description("Indicates whether to display the phone number as a single text box or separate field")]
    public string n
		{
			get; set;
		}




	}
}