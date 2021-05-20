<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="DynamicCV.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Mesaj Detayları</h4>
    <asp:TextBox ID="TextGonderen" runat="server" CssClass="form-control"></asp:TextBox>
    <br />   
    <asp:TextBox ID="TextMail" runat="server" CssClass="form-control"></asp:TextBox>
    <br />   
    <asp:TextBox ID="TextKonu" runat="server" CssClass="form-control"></asp:TextBox>
    <br />  
    <asp:TextBox ID="TextMesaj" TextMode="MultiLine" Height="100" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
</asp:Content>