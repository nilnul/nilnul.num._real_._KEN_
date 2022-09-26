<%@ Control Language="C#" AutoEventWireup="true" ClassName="InverseOfNToS_ascx"  %>
<%@ Import Namespace="System.ComponentModel" %>

<script runat="server">

	[Browsable(true),
Category("Appearance"),
DefaultValue(1),
Description("Indicates whether to display the phone number as a single text box or separate field")]
	public int n {
		get; set; }
</script>
<mfrac><mn>1</mn><msup><mn><%=n %></mn><mi>s</mi></msup></mfrac>
