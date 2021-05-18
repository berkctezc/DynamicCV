<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YeniYetenek.aspx.cs" Inherits="DynamicCV.YeniYetenek" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Yeni yetenek ekle</h4> <br />
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="yetenek"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="derece"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="Button1_Click" />
</asp:Content>
