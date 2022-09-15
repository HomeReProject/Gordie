<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="New_Project_Opportunities.aspx.cs" Inherits="GORDIE.New_Project_Opportunities1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayContentPlaceHolder" runat="server">
    <div class="label"><asp:Label ID="lbl_NPO" runat="server" Text="Label"></asp:Label></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1 class="heading">New Project Opportunities</h1>    
    <div class="rightcontent">
    <table>
        <tr>
            <td>Today's Date</td>
            <td><asp:TextBox ID="txt_Today" Class="text-input" runat="server"></asp:TextBox></td>
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
            <td>Click to Select the target FULL-PPM Network Owner</td>
            <td>
                <asp:Button ID="btn_Org" Class="text-input" runat="server" Text="FULL-PPM Network Owners" OnClick="btn_Org_Click" /></td>
        </tr>

        <tr>
            <td>Select Organization</td>
            <td>
                <asp:DropDownList ID="ddl_Org_list" Class="text-input" runat="server">
                    <asp:ListItem Text="Select Organizations" Value="-1"></asp:ListItem>
                </asp:DropDownList></td>
        </tr>

        <tr>
            <td>Project ID</td>
            <td>
                <asp:TextBox ID="txt_prj_ID" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Opportunities Folder Link</td>
            <td>
                <asp:TextBox ID="txt_PrjOpp" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Button ID="btn_NPO" class="submit" runat="server" Text="SUBMIT" OnClick="btn_NPO_Click" />
</asp:Content>
