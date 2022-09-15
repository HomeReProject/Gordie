<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Individual_Form.aspx.cs" Inherits="GORDIE.WebForm3" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayContentPlaceHolder" runat="server">
    <div class="label"><asp:Label ID="lbl_Individual" runat="server"></asp:Label></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1 class="heading">Individual Form</h1>
    <div class="rightcontent">
    <table>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading">Individual General Information</h2>
            </td>
        </tr>

        <tr>
            <td>Updated</td>
            <td>
                <asp:TextBox ID="txtUpdatedDate" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Organization ID</td>
            <td>
                <asp:TextBox ID="txtOrgID" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Individual Full Name</td>
            <td>
                <asp:TextBox ID="txtFullName" Class="text-input" runat="server"></asp:TextBox></td>
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
            <td>Worker Type</td>
            <td>
                <asp:DropDownList ID="ddl_WorkerType" Class="text-input" runat="server" >
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Contractor"></asp:ListItem>
                    <asp:ListItem Text="Employee"></asp:ListItem>
                    <asp:ListItem Text="Subcontractor"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>Resource Type</td>
            <td>
                <asp:DropDownList ID="ddl_ResourceType" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Architect"></asp:ListItem>
                    <asp:ListItem Text="Building Inspector"></asp:ListItem>
                    <asp:ListItem Text="Cabinet Installer"></asp:ListItem>
                    <asp:ListItem Text="Carpenter (apprentice)"></asp:ListItem>
                    <asp:ListItem Text="Carpenter (master)"></asp:ListItem>
                    <asp:ListItem Text="Countertop Installer"></asp:ListItem>
                    <asp:ListItem Text="Countertop Templater"></asp:ListItem>
                    <asp:ListItem Text="Customer"></asp:ListItem>
                    <asp:ListItem Text="Designer"></asp:ListItem>
                    <asp:ListItem Text="Electrician (apprentice)"></asp:ListItem>
                    <asp:ListItem Text="Electrician (master)"></asp:ListItem>
                    <asp:ListItem Text="Excavator"></asp:ListItem>
                    <asp:ListItem Text="Flooring (apprentice)"></asp:ListItem>
                    <asp:ListItem Text="Flooring (master)"></asp:ListItem>
                    <asp:ListItem Text="Foundation"></asp:ListItem>
                    <asp:ListItem Text="General Contractor (apprentice)"></asp:ListItem>
                    <asp:ListItem Text="General Contractor (master)"></asp:ListItem>
                    <asp:ListItem Text="HVAC (apprentice)"></asp:ListItem>
                    <asp:ListItem Text="HVAC (master)"></asp:ListItem>
                    <asp:ListItem Text="Info Tech"></asp:ListItem>
                    <asp:ListItem Text="Kitchen Sales"></asp:ListItem>
                    <asp:ListItem Text="Landscaper"></asp:ListItem>
                    <asp:ListItem Text="Mason (master)"></asp:ListItem>
                    <asp:ListItem Text="Painter (apprentice)"></asp:ListItem>
                    <asp:ListItem Text="Painter (master)"></asp:ListItem>
                    <asp:ListItem Text="Plumber  (apprentice)"></asp:ListItem>
                    <asp:ListItem Text="Plumber  (master)"></asp:ListItem>
                    <asp:ListItem Text="Project Manager"></asp:ListItem>
                    <asp:ListItem Text="Roofer/Sider"></asp:ListItem>
                    <asp:ListItem Text="Septic"></asp:ListItem>
                    <asp:ListItem Text="Sheet Rock (apprentice)"></asp:ListItem>
                    <asp:ListItem Text="Sheet Rock (master)"></asp:ListItem>
                    <asp:ListItem Text="Structural Engineer"></asp:ListItem>
                    <asp:ListItem Text="Tiler (apprentice)"></asp:ListItem>
                    <asp:ListItem Text="Tiler (master)"></asp:ListItem>
                    <asp:ListItem Text="Z-Other"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Trade Role</td>
            <td>
                <asp:DropDownList ID="ddl_TradeRole" Class="text-input" runat="server" >
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Architect/Designer"></asp:ListItem>
                    <asp:ListItem Text="Carpentry"></asp:ListItem>
                    <asp:ListItem Text="Stone / Countertops"></asp:ListItem>
                    <asp:ListItem Text="Electrical"></asp:ListItem>
                    <asp:ListItem Text="Energy Specialist"></asp:ListItem>
                    <asp:ListItem Text="Engineering"></asp:ListItem>
                    <asp:ListItem Text="Excavation/Septic"></asp:ListItem>
                    <asp:ListItem Text="General Contracting"></asp:ListItem>
                    <asp:ListItem Text="HVAC"></asp:ListItem>
                    <asp:ListItem Text="Information Technology / Media"></asp:ListItem>
                    <asp:ListItem Text="Landscaping"></asp:ListItem>
                    <asp:ListItem Text="Remodeling Retail"></asp:ListItem>
                    <asp:ListItem Text="Masonry/Cement"></asp:ListItem>
                    <asp:ListItem Text="Painting"></asp:ListItem>
                    <asp:ListItem Text="Plumbing"></asp:ListItem>
                    <asp:ListItem Text="Project Management"></asp:ListItem>
                    <asp:ListItem Text="Roofing"></asp:ListItem>
                    <asp:ListItem Text="Sheet Rock"></asp:ListItem>
                    <asp:ListItem Text="Tiling / Carpet"></asp:ListItem>
                    <asp:ListItem Text="Flooring"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>Hourly Rate</td>
            <td>
                <asp:TextBox ID="txtHourlyRate" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Membership Status</td>
            <td>
                <asp:DropDownList ID="ddl_MemberStatus" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Active"></asp:ListItem>
                    <asp:ListItem Text="Inactive"></asp:ListItem>
                    <asp:ListItem Text="Suspended"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>Individual HRP Start Date</td>
            <td>
                <asp:TextBox ID="txtStartdate" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Non-Project Demand %</td>
            <td>
                <asp:TextBox ID="txt_nonPrj" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Capacity %</td>
            <td>
                <asp:TextBox ID="txt_PrjCapacity" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Standard Full Capacity Hours</td>
            <td>
                <asp:TextBox ID="txt_FullCapacityHours" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Work Permit Documentation</td>
            <td>
                <asp:DropDownList ID="ddl_WorkPermit" Class="text-input" runat="server" >
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Yes"></asp:ListItem>
                    <asp:ListItem Text="No"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>W-9/W-4 Record</td>
            <td>
                <asp:DropDownList ID="ddl_WorkRecords" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Yes"></asp:ListItem>
                    <asp:ListItem Text="No"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Certification/License</td>
            <td>
                <asp:DropDownList ID="ddl_License" Class="text-input" runat="server" >
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Yes"></asp:ListItem>
                    <asp:ListItem Text="No"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>Background Check</td>
            <td>
                <asp:DropDownList ID="ddl_BCheck" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Yes"></asp:ListItem>
                    <asp:ListItem Text="No"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading">Individual's Access Levels and PIN</h2>
            </td>
        </tr>
        <tr>
            <td>Individual Requires HRP System Access?</td>
            <td>
                <asp:DropDownList ID="ddl_HRPSystemAccess" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Yes"></asp:ListItem>
                    <asp:ListItem Text="No"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Phone Application Version</td>
            <td>
                <asp:DropDownList ID="ddl_AppVersion" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Customer"></asp:ListItem>
                    <asp:ListItem Text="Full PPM Network Owner"></asp:ListItem>
                    <asp:ListItem Text="Network Member"></asp:ListItem>
                    <asp:ListItem Text="Retail/Design Network Owner"></asp:ListItem>
                    <asp:ListItem Text="None"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>ShareFile Access Level</td>
            <td>
                <asp:DropDownList ID="ddl_ShareFileAccessLevel" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Customer"></asp:ListItem>
                    <asp:ListItem Text="Full PPM Network Owner"></asp:ListItem>
                    <asp:ListItem Text="Network Member"></asp:ListItem>
                    <asp:ListItem Text="Retail/Design Network Owner"></asp:ListItem>
                    <asp:ListItem Text="None"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Resource Pool Access</td>
            <td>
                <asp:DropDownList ID="ddl_ResourcePoolAccess" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Yes"></asp:ListItem>
                    <asp:ListItem Text="No"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>Network Development Access</td>
            <td>
                <asp:DropDownList ID="ddl_NetworkDevAccess" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Yes"></asp:ListItem>
                    <asp:ListItem Text="No"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>File Access PIN</td>
            <td>
                <asp:TextBox ID="txtPIN" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading">Individual Membership Billing</h2>
            </td>
        </tr>
        <tr>
            <td>Initial Billing Option</td>
            <td>
                <asp:DropDownList ID="ddl_BillingOption" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Free"></asp:ListItem>
                    <asp:ListItem Text="Free 1 Qtr Trail"></asp:ListItem>
                    <asp:ListItem Text="Invoice Now"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Individual HRP Membership Fee</td>
            <td>
                <asp:TextBox ID="txtFee" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Last Membership Invoice Date</td>
            <td>
                <asp:TextBox ID="txtInvoiceDate" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Payment Due Date</td>
            <td>
                <asp:TextBox ID="txtDueDate" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Current Membership Payment Status</td>
            <td>
                <asp:DropDownList ID="ddl_PayStatus" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Current"></asp:ListItem>
                    <asp:ListItem Text="Late"></asp:ListItem>
                    <asp:ListItem Text="Paid"></asp:ListItem>
                    <asp:ListItem Text="Pending"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Paid Through Date</td>
            <td>
                <asp:TextBox ID="txtPaidThrough" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Next Membership Invoice Date</td>
            <td>
                <asp:TextBox ID="txtNextInvoice" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Pays Through Date</td>
            <td>
                <asp:TextBox ID="txtPaysThrough" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

    </table></div>
    <br />

    <asp:Button ID="btn_Individual_Submit" Class="submit" runat="server" Text="Submit" OnClick="btn_Individual_Submit_Click" /><br />

</asp:Content>
