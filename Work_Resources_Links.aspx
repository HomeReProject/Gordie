<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Work_Resources_Links.aspx.cs" Inherits="GORDIE.Work_Resources_Links1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayContentPlaceHolder" runat="server">
    <div><asp:Label ID="lbl_wrl" runat="server"></asp:Label></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1 class="heading">Work Resource Links</h1>
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
            <td colspan="2">
                <h2 class="sub-heading">Static Links</h2>
            </td>
        </tr>

        <tr>
            <td>Resource Capacity Form</td>
            <td><asp:TextBox ID="txt_Resource_Cap_Form" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Network Development Form</td>
            <td><asp:TextBox ID="txt_Net_Dev_Form" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Weekly Portfolio Folder</td>
            <td><asp:TextBox ID="txt_Weekly_Portfolio" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Resources Folder (Member)</td>
            <td><asp:TextBox ID="txt_Member" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading">Weekly Refresh Links</h2>
            </td>
        </tr>

        <tr>
            <td>Full-PPM Weekly HRP Report</td>
            <td><asp:TextBox ID="txt_Fp_Report" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Full-PPM Network's (our) Weekly WP Guide</td>
            <td><asp:TextBox ID="txt_Fp_Guide" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>My Weekly WP Guide</td>
            <td><asp:TextBox ID="txt_WP_Guide" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Retail/Design Network Owner's Weekly Portfolio Dashboard</td>
            <td><asp:TextBox ID="txt_Retail" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading">Monthly Refresh Links</h2>
            </td>
        </tr>
        <tr>
            <td>Monthly Network Heat Map</td>
            <td><asp:TextBox ID="txt_Monthly" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Portfolio Alignment Report</td>
            <td><asp:TextBox ID="txt_Alignment" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
    </table></div>
     <br />
<asp:Button ID="btn_wrl" class="submit" runat="server" Text="SUBMIT" OnClick="btn_wrl_Click" />
</asp:Content>
