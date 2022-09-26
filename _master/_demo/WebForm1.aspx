<%@ Page Title="" Language="C#" MasterPageFile="~/_master/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="nilnul.num.real._Ken._web._master._demo.WebForm1" %>
<%@ Register src="../../op/Inverse.ascx" tagname="Inverse" tagprefix="uc1" %>
<%@ Register Src="~/rhiemannHypothesis/claims/eulerProductionEqZeta/Proof.ascx" TagPrefix="uc1" TagName="Proof" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:Proof runat="server" ID="Proof" />

</asp:Content>
