<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yeteneklerim.aspx.cs" Inherits="DynamicCV.Hakkimda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <table class="table table-bordered">
            <tr>
                <th>ID</th>
                <th>YETENEK</th>
                <th>DERECE</th>
                <th>SİL</th>
                <th>GÜNCELLE</th>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ID") %></td>
                        <td><%# Eval("YETENEK") %></td>
                        <td><%# Eval("DERECE") %></td>
                        <td>
                            <asp:HyperLink CssClass="btn btn-danger" ID="HyperLink1" runat="server" NavigateUrl='<%# "YetenekSil.aspx?ID="+Eval("ID") %>'>Sil</asp:HyperLink>
                        </td>
                        <td>
                            <asp:HyperLink CssClass="btn btn-warning" ID="HyperLink2" runat="server" NavigateUrl='<%# "YetenekGuncelle.aspx?ID="+Eval("ID") %>'>Güncelle</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </table>
        <a href="YeniYetenek.aspx" class="btn btn-primary" style="margin-left: 5px;">Yeni Yetenek Ekle</a>
    </div>
</asp:Content>
