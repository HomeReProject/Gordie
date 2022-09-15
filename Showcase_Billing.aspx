<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Showcase_Billing.aspx.cs" Inherits="GORDIE.Showcase_Billing_new" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayContentPlaceHolder" runat="server">
    <div><asp:Label ID="lbl_SB" runat="server" Text="Label"></asp:Label></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1 class="heading">Client Showcasing</h1>
    <div class="rightcontent">
        <table>
            <tr>
                <td colspan="2" ><h2 class="sub-heading">Showcase Billing</h2></td>
            </tr>

            <tr>
                <td>Today's Date</td>
                <td><asp:TextBox ID="txt_Today" class="text-input" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Service Region</td>
                <td>
                    <asp:DropDownList ID="ddl_ServiceRegion" class="text-input" runat="server">
                        <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="New Haven, CT"></asp:ListItem>
                        <asp:ListItem Text="Norwalk, CT"></asp:ListItem>
                        <asp:ListItem Text="Twin Cities, MN"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>              

        <tr>
            <td><asp:Button ID="btn_Org" runat="server" Text="Click to Select an Organization" OnClick="btn_Org_Click" /></td>
            <td>
                <asp:DropDownList ID="ddl_Org_list" Class="text-input" runat="server">
                    <asp:ListItem Text="Select Organizations" Value="-1"></asp:ListItem>
                </asp:DropDownList>

            </td>
        </tr>
             <tr>
                <td>Showcase page Launch & First Invoice Date</td>
                <td>
                    <asp:TextBox ID="txt_LaunchDate" class="text-input" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Showcase Duration (In Months)</td>
                <td>
                    <asp:TextBox ID="txt_Duration" class="text-input" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Showcase Setup Fee</td>
                <td> 
                    <asp:DropDownList ID="ddl_SetupFee" class="text-input" runat="server">
                     <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                     <asp:ListItem Text="100.00"></asp:ListItem>
                     <asp:ListItem Text="0.00"></asp:ListItem>
                    </asp:DropDownList>
                </td> 
            </tr>
             <tr>
                <td>* Service Billing Frequency</td>
                <td>
                    <asp:DropDownList ID="ddl_Billing_Freq" class="text-input" runat="server">
                     <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                     <asp:ListItem Text="Annually"></asp:ListItem>
                     <asp:ListItem Text="Quaterly"></asp:ListItem>
                     <asp:ListItem Text="Monthly"></asp:ListItem>
                    </asp:DropDownList>
                </td> 
            </tr>
             <tr>
                <td>Next Showcase Invoice Date</td>
                <td>
                    <asp:TextBox ID="txt_InvoiveDate" class="text-input" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Pays Through Date</td>
                <td><asp:TextBox ID="txt_PayThru" class="text-input" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Showcase Content Folder Link</td>
                <td><asp:TextBox ID="txt_FolderLink" class="text-input" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Showcase Page URL</td>
                <td><asp:TextBox ID="txt_PageUrl" class="text-input" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Network Owner(Select only 1)</td>
                <td>
                    <asp:DropDownList ID="ddl_NetworkOwner" class="text-input" runat="server">
                     <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                     <asp:ListItem Text="Full-PPM General Contractor"></asp:ListItem>
                     <asp:ListItem Text="Other"></asp:ListItem>
                     <asp:ListItem Text="Retail/Designer - Materials Retailer"></asp:ListItem>
                     <asp:ListItem Text="Retail/Designer - Design & Architecture"></asp:ListItem>
                     <asp:ListItem Text="Network Member"></asp:ListItem>
                    </asp:DropDownList>
                </td> 
            </tr>
            <tr>
                <td colspan="2"><h2 class="text-headings">Showcase Filtering</h2></td>
            </tr>
            <tr>
                <td class="label">Market Type</td>
                <td>
                    <asp:DropDownList ID="ddl_MarketType" class="text-input" runat="server">
                     <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                     <asp:ListItem Text="Residential"></asp:ListItem>
                     <asp:ListItem Text="Commercial"></asp:ListItem>                     
                    </asp:DropDownList>
                </td> 
            </tr>
            
            <tr>
                <td class="label">Project Size</td>
                 <td>
                    <asp:DropDownList ID="ddl_ProjectSize" class="text-input" runat="server">
                     <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                     <asp:ListItem Text="Small"></asp:ListItem>
                     <asp:ListItem Text="Medium"></asp:ListItem>
                     <asp:ListItem Text="Large"></asp:ListItem>
                    </asp:DropDownList>
                </td> 
            </tr>
            
            <tr>
                <td class="label">Interior Remodel Type</td>
                <td>
                    <asp:DropDownList ID="ddl_Interior" class="text-input" runat="server">
                     <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                     <asp:ListItem Text="Kitchen & Bath"></asp:ListItem>
                     <asp:ListItem Text="Interior Rooms"></asp:ListItem>
                     <asp:ListItem Text="Basement"></asp:ListItem>
                    </asp:DropDownList>
                </td> 
            </tr>
           
            <tr>
                <td class="label">Exterior Remodel Type</td>
                <td>
                    <asp:DropDownList ID="ddl_Exterior" class="text-input" runat="server">
                     <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                     <asp:ListItem Text="Garage"></asp:ListItem>
                     <asp:ListItem Text="Porch"></asp:ListItem>
                     <asp:ListItem Text="New Addition"></asp:ListItem>
                        <asp:ListItem Text="Others"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            
        </table>
    <table class="showcaseBilling">
        <tr>
            <td colspan="2"><h2 class="text-headings">Specialty Filters</h2></td>
        </tr>
        <tr>
            <td>General Contractor</td>
            <td><asp:CheckBox ID="CheckBox8" runat="server" /></td>
        </tr>

         <tr>
            <td>Architect/Engineer</td>
            <td><asp:CheckBox ID="CheckBox9" runat="server" /></td>
        </tr>

         <tr>
            <td>Carpentry</td>
            <td><asp:CheckBox ID="CheckBox10" runat="server" /></td>
        </tr>

         <tr>
            <td>Electrical</td>
            <td><asp:CheckBox ID="CheckBox11" runat="server" /></td>
        </tr>

         <tr>
            <td>Energy</td>
            <td><asp:CheckBox ID="CheckBox12" runat="server" /></td>
        </tr>

         <tr>
            <td>Excavation & Septic</td>
            <td><asp:CheckBox ID="CheckBox13" runat="server" /></td>
        </tr>

         <tr>
            <td>Flooring</td>
            <td><asp:CheckBox ID="CheckBox14" runat="server" /></td>
        </tr>

         <tr>
            <td>HVAC</td>
            <td><asp:CheckBox ID="CheckBox15" runat="server" /></td>
        </tr>

         <tr>
            <td>Information Technology</td>
            <td><asp:CheckBox ID="CheckBox16" runat="server" /></td>
        </tr>

         <tr>
            <td>Landscaping</td>
            <td><asp:CheckBox ID="CheckBox17" runat="server" /></td>
        </tr>

         <tr>
            <td>Masonry</td>
            <td><asp:CheckBox ID="CheckBox18" runat="server" /></td>
        </tr>

          <tr>
            <td>Painting</td>
            <td><asp:CheckBox ID="CheckBox19" runat="server" /></td>
        </tr>

         <tr>
            <td>Paving</td>
            <td><asp:CheckBox ID="CheckBox20" runat="server" /></td>
        </tr>

          <tr>
            <td>Plumbing</td>
            <td><asp:CheckBox ID="CheckBox21" runat="server" /></td>
        </tr>

         <tr>
            <td>Roofing & Siding</td>
            <td><asp:CheckBox ID="CheckBox22" runat="server" /></td>
        </tr>

          <tr>
            <td>Sheet Rock (dry wall)</td>
            <td><asp:CheckBox ID="CheckBox23" runat="server" /></td>
        </tr>

         <tr>
            <td>Stone & Countertops</td>
            <td><asp:CheckBox ID="CheckBox24" runat="server" /></td>
        </tr>

          <tr>
            <td>Tiling</td>
            <td><asp:CheckBox ID="CheckBox25" runat="server" /></td>
        </tr>

         <tr>
            <td>Windows & Doors</td>
            <td><asp:CheckBox ID="CheckBox26" runat="server" /></td>
        </tr>

          <tr>
            <td>Others</td>
            <td><asp:CheckBox ID="CheckBox27" runat="server" /></td>
        </tr>        
    </table></div>    
    <asp:Button ID="btnShowcaseBilling" class="submit" runat="server" Text="SUBMIT" OnClick="btnShowcaseBilling_Click" />
    <%--<div style="height:200px;"></div>--%>
</asp:Content>


