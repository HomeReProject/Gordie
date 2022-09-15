<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reports_Accounting_Links.aspx.cs" Inherits="GORDIE.Reports_Accounting_Links1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayContentPlaceHolder" runat="server">
    <div class="label">
        <asp:Label ID="lbl_RA" runat="server" Text="Label"></asp:Label></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1 class="heading">Reports Accounting Links</h1>
    <div class="rightcontent">
     <table>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading">Organization</h2>
            </td>
        </tr>
        <tr>
            <td>Service Region</td>
            <td>
                <asp:DropDownList ID="ddl_ServiceRegion" Class="text-input" runat="server">
                    <asp:ListItem Text="Select Region" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="New Haven, CT"></asp:ListItem>
                    <asp:ListItem Text="Norwalk, CT"></asp:ListItem>
                    <asp:ListItem Text="Twin Cities, MN"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Click to get the Orgs</td>
            <td><asp:Button ID="btn_Org" Class="text-input" runat="server" Text="Click to select Orgs" OnClick="btn_Org_Click" /></td>
        </tr>

        <tr>
            <td>Select Organization</td>
            <td><asp:DropDownList ID="ddl_Org_list" Class="text-input" runat="server">
                    <asp:ListItem Text="Select Organizations" Value="-1"></asp:ListItem>
                </asp:DropDownList></td>
        </tr>

        <tr>
            <td  colspan="2">
                <h2 class="sub-heading">Static Links</h2>
            </td>
        </tr>

        <tr>
            <td>Monthly HRP Invoices Folder</td>
            <td><asp:TextBox ID="txt_Monthly" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Quarterly Statements Folder</td>
            <td><asp:TextBox ID="txt_Q1" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading">Refresh Links</h2>
            </td>
        <tr>
            <td>Quarterly Network Owner Report</td>
            <td><asp:TextBox ID="txt_Q2" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Quarterly Network Member Report</td>
            <td><asp:TextBox ID="txt_Q3" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
    </table>
        </div>
    <br /><br />
        <asp:Button ID="btn_RA_Click" Class="submit" runat="server" Text="SUBMIT" OnClick="btn_RA_Click_Click" />
</asp:Content>
