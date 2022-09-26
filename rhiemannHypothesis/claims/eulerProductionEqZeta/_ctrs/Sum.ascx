<%@ Control Language="C#" AutoEventWireup="true" %>
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

		
		for (int i = 0; i < str.Length; i++)
		{
			var ctr = LoadControl("InverseOfNToS_toolboxData.ascx") as InverseOfNToS_toolboxData;

			ctr.n = str[i];


			holder.Controls.Add(ctr);

			holder.Controls.Add(

				new nilnul.mathMl._ctr.MoPlus()
				);

		}




	}


</script>


<asp:PlaceHolder ID="holder" runat="server"></asp:PlaceHolder>
	<uc1:MoEllip runat="server" ID="MoEllip" />
