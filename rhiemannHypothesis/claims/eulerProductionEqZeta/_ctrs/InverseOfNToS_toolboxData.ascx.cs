using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nilnul.num.real._Ken._web.rhiemannHypothesis.claims.eulerProductionEqZeta._ctrs
{

	[ToolboxData("<{0}:InverseOfNToS_toolboxData runat=server n=1></{0}:InverseOfNToS_toolboxData>")]
	public partial class InverseOfNToS_toolboxData : System.Web.UI.UserControl
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		[Browsable(true),
Category("Appearance"),
DefaultValue("1"),
Description("Indicates whether to display the phone number as a single text box or separate field")]
		public string n
		{
			get; set;
		}

	}
}