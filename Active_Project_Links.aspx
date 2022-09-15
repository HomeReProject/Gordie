<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Active_Project_Links.aspx.cs" Inherits="GORDIE.Active_Project_Links1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayContentPlaceHolder" runat="server">
    <asp:Label ID="lbl_APL" runat="server" Text="Label"></asp:Label>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1 class="heading">Active Project Links</h1>
    <div class="rightcontent">
    <table>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading">Project's Basic Information & Status</h2>
            </td>
        </tr>
        <tr>
            <td>Updated Date</td>
            <td>
                <asp:TextBox ID="txt_Today" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Plan ID</td>
            <td>
                <asp:TextBox ID="txt_PrjPlanID" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <h2  class="sub-heading">Static Links</h2>
            </td>
        </tr>
        <tr>
            <td>Project Folder (active)</td>
            <td>
                <asp:TextBox ID="txt_T28" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Plan Folder (active)</td>
            <td>
                <asp:TextBox ID="txt_T29" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Customer & Team Area Folder</td>
            <td>
                <asp:TextBox ID="txt_T30" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Documents Folder</td>
            <td>
                <asp:TextBox ID="txt_T31" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Plan Overview Folder</td>
            <td>
                <asp:TextBox ID="txt_T32" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Customer Reports Folder</td>
            <td>
                <asp:TextBox ID="txt_T33" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Receipts Depot Folder</td>
            <td>
                <asp:TextBox ID="txt_T34" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Draft Billing Folder</td>
            <td>
                <asp:TextBox ID="txt_T35" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Final Invoices Folder</td>
            <td>
                <asp:TextBox ID="txt_T36" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Monthly Invoices Folder</td>
            <td>
                <asp:TextBox ID="txt_T37" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Closeout Folder</td>
            <td>
                <asp:TextBox ID="txt_T38" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>FINAL Project Scope & Specifications PDF</td>
            <td>
                <asp:TextBox ID="txt_39" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Baseline Project Plan & Quote PDF</td>
            <td>
                <asp:TextBox ID="txt_40" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Baseline Project Plan Overview PDF</td>
            <td>
                <asp:TextBox ID="txt_41" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <h2  class="sub-heading">Weekly Refresh Links</h2>
            </td>
        </tr>
        <tr>
            <td>Customer Weekly Project Status Report PDF</td>
            <td>
                <asp:TextBox ID="txt_42" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Network Owner Weekly Project Status Report PDF</td>
            <td>
                <asp:TextBox ID="txt_43" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading">Monthly Refresh Links</h2>
            </td>
        </tr>
        <tr>
            <td>Draft Services Billing PDF</td>
            <td>
                <asp:TextBox ID="txt_44" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Draft Materials/Etc Billing PDF</td>
            <td>
                <asp:TextBox ID="txt_45" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Final Monthly/Milestone Customer Invoice PDF</td>
            <td>
                <asp:TextBox ID="txt_46" Class="text-input"  runat="server"></asp:TextBox></td>
        </tr>
    </table></div>
    <br />
    <asp:Button ID="btn_ACT" class="submit" runat="server" Text="SUBMIT" OnClick="btn_ACT_Click" />
</asp:Content>
