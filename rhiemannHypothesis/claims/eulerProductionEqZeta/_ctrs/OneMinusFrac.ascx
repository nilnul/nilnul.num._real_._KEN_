<%@ Control Language="C#" AutoEventWireup="true" ClassName="OneMinusFrac_ascx" %>
<%@ Import Namespace="System.ComponentModel" %>

<%@ Register Assembly="nilnul.math._ml_._CTR4WEB_" Namespace="nilnul.mathMl._ctr" TagPrefix="cc1" %>
<%@ Register Src="~/rhiemannHypothesis/claims/eulerProductionEqZeta/_ctrs/InverseOfNToS.ascx" TagPrefix="uc1" TagName="InverseOfNToS" %>


<script runat="server">

	[Browsable(true),
Category("Appearance"),
DefaultValue(1),
Description("Indicates whether to display the phone number as a single text box or separate field")]
	public int n {
		get; set;
	}

	protected void Page_Load(object sender, EventArgs e)
	{
		InverseOfNToS.n = this.n;
	}


</script>



<mfenced separators="">
			<mn>1</mn>
<cc1:MoMinus ID="MoMinus19" runat=server></cc1:MoMinus>
	
	<uc1:InverseOfNToS runat="server" id="InverseOfNToS"  />

		</mfenced>
