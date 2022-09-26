<%@ Control Language="C#" AutoEventWireup="true" %>
<%@ Register Assembly="nilnul.math._ml_._CTR4WEB_" Namespace="nilnul.mathMl._ctr" TagPrefix="cc1" %>
<%@ Import Namespace="System.ComponentModel" %>
<%@ Import Namespace="nilnul.num.real._Ken._web.rhiemannHypothesis.claims.eulerProductionEqZeta._ctrs" %>
<%@ Register Src="~/rhiemannHypothesis/claims/eulerProductionEqZeta/_ctrs/MoEllip.ascx" TagPrefix="uc1" TagName="MoEllip" %>


<script runat="server">

	[Browsable(true),
Category("Appearance"),
DefaultValue("1,2,3"),
Description("String of Numbers")]
	public string nS
	{
		get; set;
	}

	protected void Page_Load(object sender, EventArgs eventArgs)
	{

		var str = nS.Split(new[] { ',' });

		int i;

		for (i = 0; i < str.Length-1; i++)
		{
			var ctr = LoadControl("OneMinusFrac_codeBehind.ascx") as OneMinusFrac_codeBehind;

			ctr.n = str[i];


			holder.Controls.Add(ctr);

			

			holder.Controls.Add(
				new nilnul.mathMl._ctr.MoInvisibleTimes()
			);
		}

			var ctr1 = LoadControl("OneMinusFrac_codeBehind.ascx") as OneMinusFrac_codeBehind;

			ctr1.n = str[i];


			holder.Controls.Add(ctr1);





	}


</script>


<asp:PlaceHolder ID="holder" runat="server"></asp:PlaceHolder>
