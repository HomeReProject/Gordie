<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Project_Info_Basic_Form.aspx.cs" Inherits="GORDIE.Project_Info_Basic_Form1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayContentPlaceHolder" runat="server">
    <div class="label">
        <asp:Label ID="lbl_Prj" runat="server" Text="Label"></asp:Label></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1 class="heading">Project Info Basic</h1>
    <div class="rightcontent">
    <table>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading">General Information</h2>
            </td>
        </tr>

        <tr>
            <td>Project Edited Date</td>
            <td>
                <asp:TextBox ID="txt_Today" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Project Name</td>
            <td>
                <asp:TextBox ID="txt_Prj_Name" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Customer ID</td>
            <td>
                <asp:TextBox ID="txt_Cust_ID" Class="text-input" runat="server"></asp:TextBox></td>
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
            <td>Project Type</td>
            <td>
                <asp:DropDownList ID="ddl_Project_Type" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Basement Remodel"></asp:ListItem>
                    <asp:ListItem Text="Bathroom Remodel"></asp:ListItem>
                    <asp:ListItem Text="Bedroom Remodel"></asp:ListItem>
                    <asp:ListItem Text="Exterior Remodel"></asp:ListItem>
                    <asp:ListItem Text="HRP Internal"></asp:ListItem>
                    <asp:ListItem Text="Kitchen Remodel"></asp:ListItem>
                    <asp:ListItem Text="Living Room Remodel"></asp:ListItem>
                    <asp:ListItem Text="New Construction"></asp:ListItem>
                    <asp:ListItem Text="Office Space"></asp:ListItem>
                    <asp:ListItem Text="Retail Space"></asp:ListItem>
                    <asp:ListItem Text="Others"></asp:ListItem>
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
            <td colspan="2">
                <h2 class="sub-heading">Project Location</h2>
            </td>
        </tr>
        <tr>
            <td>Project Address Line1</td>
            <td>
                <asp:TextBox ID="txt_Prj_Address1" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Address Line2</td>
            <td>
                <asp:TextBox ID="txt_Prj_Address2" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project City</td>
            <td>
                <asp:TextBox ID="txt_Prj_City" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Project State</td>
            <td>
                <asp:TextBox ID="txt_Prj_State" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project ZIP</td>
            <td>
                <asp:TextBox ID="txt_Prj_ZIP" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project ZQ Locations</td>
            <td>
                <asp:DropDownList ID="ddl_ZQ_Locations" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Zone 1, NE"></asp:ListItem>
                    <asp:ListItem Text="Zone 1, NW"></asp:ListItem>
                    <asp:ListItem Text="Zone 1, SE"></asp:ListItem>
                    <asp:ListItem Text="Zone 1, SW"></asp:ListItem>
                    <asp:ListItem Text="Zone 2, NE"></asp:ListItem>
                    <asp:ListItem Text="Zone 2, NW"></asp:ListItem>
                    <asp:ListItem Text="Zone 2, SE"></asp:ListItem>
                    <asp:ListItem Text="Zone 2, SW"></asp:ListItem>
                    <asp:ListItem Text="Zone 3, NE"></asp:ListItem>
                    <asp:ListItem Text="Zone 3, NW"></asp:ListItem>
                    <asp:ListItem Text="Zone 3, SE"></asp:ListItem>
                    <asp:ListItem Text="Zone 3, SW"></asp:ListItem>
                    <asp:ListItem Text="Zone 4, NE"></asp:ListItem>
                    <asp:ListItem Text="Zone 4, NW"></asp:ListItem>
                    <asp:ListItem Text="Zone 4, SE"></asp:ListItem>
                    <asp:ListItem Text="Zone 4, SW"></asp:ListItem>
                    <asp:ListItem Text="Zone 5, NE"></asp:ListItem>
                    <asp:ListItem Text="Zone 5, NW"></asp:ListItem>
                    <asp:ListItem Text="Zone 5, SE"></asp:ListItem>
                    <asp:ListItem Text="Zone 5, SW"></asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading">Desired Schedule</h2>
            </td>
        </tr>
        <tr>
            <td>Desired Start Date</td>
            <td>
                <asp:TextBox ID="txt_Desired_Start_Date" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Desired Finished Date</td>
            <td>
                <asp:TextBox ID="txt_Desired_Finished_Date" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Desired Site Visit Date</td>
            <td>
                <asp:TextBox ID="txt_Desired_Visit_Date" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Desired Plan Quote Date</td>
            <td>
                <asp:TextBox ID="txt_Desired_Quote_Date" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading">Project Description, Goals & Concerns</h2>
            </td>
        </tr>
        <!--<tr>
            <td>Project Description</td>
            <td><asp:ListBox ID="lb_Project_Description" Class="text-input" runat="server" ItemType="(Collection)"></asp:ListBox></td>
        </tr>
        <tr>
            <td>Project Goals</td>
            <td>
                <asp:ListBox ID="lb_Project_Goals" Class="text-input" runat="server"></asp:ListBox></td>
        </tr>
        <tr>
            <td>Project Concerns</td>
            <td>
                <asp:ListBox ID="lb_Project_Concerns" Class="text-input" runat="server"></asp:ListBox></td>
        </tr>-->

        <tr>
            <td>Project Description</td>
             
            <td><asp:textbox ID="txt_Project_Description" runat="server"
                Textmode="multiline" Class="text-input-depth" maxlength="1200" lines="10" cols="10" wrap="true"  /></td>
        </tr>
        <tr>
            <td>Project Goals</td>
            <td><asp:textbox ID="txt_Project_Goals" runat="server"
                Textmode="multiline" Class="text-input-depth" maxlength="1200" lines="10" cols="10" wrap="true"  /></td>            
        </tr>
        <tr>
            <td>Project Concerns</td>
            <td><asp:textbox ID="txt_Project_Concerns" runat="server"
                Textmode="multiline" Class="text-input-depth" maxlength="1200" lines="10" cols="10" wrap="true"  /></td>            
        </tr>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading">Site Visit Information</h2>
            </td>
        </tr>
        <tr>
            <td>Occupancy Status</td>
            <td>
                <asp:DropDownList ID="ddl_Occupancy_Status" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Occupied"></asp:ListItem>
                    <asp:ListItem Text="Unoccupied"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Rooms Furnished Status</td>
            <td>
                <asp:DropDownList ID="ddl_Furnished" Class="text-input" runat="server" >
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Empty"></asp:ListItem>
                    <asp:ListItem Text="Furnished"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>Space Preparation Help Needed?</td>
            <td>
                <asp:DropDownList ID="ddl_Space_Preparation" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Moving"></asp:ListItem>
                    <asp:ListItem Text="Storage"></asp:ListItem>
                    <asp:ListItem Text="Cleaning"></asp:ListItem>
                    <asp:ListItem Text="Need Help"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table></div>
     <div><p>&nbsp;</p></div>
    <div><asp:Button ID="Project_Basic_Info" Class="submit" runat="server" Text="SUBMIT" OnClick="Project_Basic_Info_Click" /></div>
</asp:Content>
