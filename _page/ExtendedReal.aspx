<%@ Page Title="" Language="C#" MasterPageFile="~/_master/Site1.Master" AutoEventWireup="true"  %>

<%@ Register Src="../ExtendedReal2.ascx" TagPrefix="uc1" TagName="ExtendedReal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<uc1:ExtendedReal runat="server" id="ExtendedReal1" />
</asp:Content>
