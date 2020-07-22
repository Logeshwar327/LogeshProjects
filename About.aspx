<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="SampleWeb.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <p runat="server" id="pwel">Welcome</p>
    <asp:Label ID="lblWelcome" runat="server" Text="Label" Font-Size="XX-Large"></asp:Label>
    <p>Use this area to provide additional information.</p>
</asp:Content>
