<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Project_Plan_Form.aspx.cs" Inherits="GORDIE.Project_Plan_Form1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1 class="heading">Project Plan Form</h1>
    <%--<table>
        <tr>
            <td><a href="#B1"><asp:Button ID="btn_bi" runat="server" Text="Basic Information" Style="width: 200px;" /></a></td>
            <td><a href="#B2"><asp:Button ID="btn_ts" runat="server" Text="3 - Tier Schedule" Style="width: 200px;" /></a></td>
        </tr>
        <tr>
            <td><a href="#B3"><asp:Button ID="btn_cost" runat="server" Text="Cost Plan Overview" Style="width: 200px;" /></a></td>
            <td><a href="#B4"><asp:Button ID="btn_prj" runat="server" Text="Project Planning Links" Style="width: 200px;" /></a></td>
        </tr>
    </table>--%>
    <div class="rightcontent">
    <table class="tab-button">
        <tr>
            <td class="anchor-btn"><a href="#B1">Basic Information</a></td>
            <td class="anchor-btn"><a href="#B2">3 - Tier Schedule</a></td>
        </tr>
        <tr>
            <td class="anchor-btn"><a href="#B3">Cost Plan Overview</a></td>
            <td class="anchor-btn"><a href="#B4">Project Planning Links</a></td>
        </tr>
    </table>
    <br />
    <asp:Label ID="lbl_ppf" runat="server"></asp:Label>
    <table>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading" id="B1">Project's Basic Information & Status</h2>
            </td>
        </tr>

        <tr>
            <td>Project Plan ID</td>
            <td>
                <asp:TextBox ID="txt_Prj_Plan_ID" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Plan Submitted Date(Today's Date)</td>
            <td><asp:TextBox ID="txt_Date" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Organization ID</td>
            <td><asp:TextBox ID="txt_OrgID" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project ID</td>
            <td><asp:TextBox ID="txt_PrjID" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Service Region</td>
            <td>
                <asp:DropDownList ID="ddl_ServiceRegion" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="New Haven, CT"></asp:ListItem>
                    <asp:ListItem Text="Norwalk, CT"></asp:ListItem>
                    <asp:ListItem Text="Twin Cities, MN"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Project Status</td>
            <td>
                <asp:DropDownList ID="ddl_Project_Status" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Concept"></asp:ListItem>
                    <asp:ListItem Text="Planning"></asp:ListItem>
                    <asp:ListItem Text="Preliminary"></asp:ListItem>
                    <asp:ListItem Text="Preparation"></asp:ListItem>
                    <asp:ListItem Text="Active"></asp:ListItem>
                    <asp:ListItem Text="Deferred"></asp:ListItem>
                    <asp:ListItem Text="On hold"></asp:ListItem>
                    <asp:ListItem Text="Completed"></asp:ListItem>
                    <asp:ListItem Text="Canceled"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Customer Last Name</td>
            <td>
                <asp:TextBox ID="txt_Cust_Lastname" Class="text-input" runat="server" ToolTip="Please verify before entering. Thanks"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Proposal Status</td>
            <td>
                <asp:DropDownList ID="ddl_pps" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Accepted(Won)"></asp:ListItem>
                    <asp:ListItem Text="Being Revised"></asp:ListItem>
                    <asp:ListItem Text="Not Yet Submitted"></asp:ListItem>
                    <asp:ListItem Text="Under Consideration"></asp:ListItem>
                    <asp:ListItem Text="Rejected(Lost)"></asp:ListItem>
                    <asp:ListItem Text="Others"></asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading"  id="B2">3 - Tier Schedule</h2>
            </td>
        </tr>
        <tr>
            <td>Desired Start Date</td>
            <td>
                <asp:TextBox ID="txt_Desired_Start_Date" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Desired Finish Date</td>
            <td>
                <asp:TextBox ID="txt_Desired_Finish_Date" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Desired Duration in Weeks</td>
            <td>
                <asp:TextBox ID="txt_Desired_Duration_Weeks" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Predicted Start Date</td>
            <td>
                <asp:TextBox ID="txt_Predicted_Start_Date" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Predicted Finish Date</td>
            <td>
                <asp:TextBox ID="txt_Predicted_Finish_Date" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Predicted Duration in Weeks</td>
            <td>
                <asp:TextBox ID="txt_Predicted_Duration_Weeks" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Baseline Start Date</td>
            <td>
                <asp:TextBox ID="txt_Baseline_Start_Date" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Baseline Finish Date</td>
            <td>
                <asp:TextBox ID="txt_Baseline_Finish_Date" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Baseline Duration in Weeks</td>
            <td>
                <asp:TextBox ID="txt_Baseline_Duration_Weeks" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading"  id="B3">Cost Plan(overview)</h2>
            </td>
        </tr>
        <tr>
            <td>Total Labor Cost Estimate</td>
            <td>
                <asp:TextBox ID="txt_Total_Labor_Cost_Estimate" Class="text-input" runat="server">0</asp:TextBox></td>
        </tr>
        <tr>
            <td>Total Materials Cost Estimate</td>
            <td>
                <asp:TextBox ID="txt_Total_Materials_Cost_Estimate" Class="text-input" runat="server">0</asp:TextBox></td>
        </tr>
        <tr>
            <td>Total Miscellaneous Cost Estimate</td>
            <td>
                <asp:TextBox ID="txt_Miscellaneous" Class="text-input" runat="server">0</asp:TextBox></td>
        </tr>
        <tr>
            <td>Total Project Cost Estimate</td>
            <td>
                <asp:TextBox ID="txt_Prj_Cost" Class="text-input" runat="server">0</asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" id="B4">
                <h2 class="sub-heading">Project Planning Links</h2>
            </td>
        </tr>
        <tr>
            <td>PIF Link</td>
            <td>
                <asp:TextBox ID="txt_PIF_Link" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Folder</td>
            <td>
                <asp:TextBox ID="txt_Project_Folder" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Quote Package Folder</td>
            <td>
                <asp:TextBox ID="txt_Quote_Package_Folder" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Customer Team Area Folder</td>
            <td>
                <asp:TextBox ID="txt_Cust_Team_Area" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>PRELIM Project Scope Specifications PDF</td>
            <td>
                <asp:TextBox ID="txt_PRELIM_PDF" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>FINAL Project Scope Specification PDF</td>
            <td>
                <asp:TextBox ID="txt_FINAL_PDF" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Plan Proposal PDF</td>
            <td>
                <asp:TextBox ID="txt_Prj_Plan_PDF" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Baseline Project Plan Quote</td>
            <td>
                <asp:TextBox ID="txt_BL_Quote" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Baseline Project Plan Overview_PDF</td>
            <td>
                <asp:TextBox ID="txt_BL_Overview" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
    </table></div>
    <br />
    <asp:Button ID="btn_Submit" class="submit" runat="server" Text="SUBMIT" OnClick="btn_Submit_Click" />
</asp:Content>
