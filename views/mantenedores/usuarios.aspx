<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="Reception_Sgs.views.mantenedores.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="listUsuarios" runat="server" DataSourceID="sqlUsuarios"></asp:GridView>
<asp:SqlDataSource ID="sqlUsuarios" runat="server"></asp:SqlDataSource>
</asp:Content>