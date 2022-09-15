<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrainingLinks.aspx.cs" Inherits="GORDIE.TrainingLinks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayContentPlaceHolder" runat="server">
    <div class="label"><asp:Label ID="lbl_TL" runat="server" Text="Label"></asp:Label></div>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1 class="heading" id="A1">Training Links Form</h1>
   <div class="rightcontent">
    <table class="tab-button">
        <tr>
                <td class="anchor-btn"><a href="#A1">Traning Folder</a></td>
                <td class="anchor-btn"><a href="#A2">All Users</a></td>
                <td class="anchor-btn"><a href="#A3">Customers</a></td>
        </tr>

        <tr>
               <td class="anchor-btn"><a href="#A4">Network Members</a></td>
               <td class="anchor-btn"><a href="#A5">Retail/Design Network Owners</a></td>
               <td class="anchor-btn"><a href="#A6">Full-PPM Network Owners</a></td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td colspan="2"  class="text-headings">Service Region</td>
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
            <td colspan="2" class="text-headings">Training Folder Links</td>
        </tr>
        <tr>
            <td>All Users System Training Folder</td>
            <td>
                <asp:TextBox ID="txtLink1" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Customer Training Folder</td>
            <td>
                <asp:TextBox ID="txtLink2" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Network Member Training Folder</td>
            <td>
                <asp:TextBox ID="txtLink3" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Retail/Design Network Owner Training Folder</td>
            <td>
                <asp:TextBox ID="txtLink4" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Full-PPM Network Owner Training Folder</td>
            <td>
                <asp:TextBox ID="txtLink5" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" class="text-headings" id="A2">All Users Training File Links</td>
        </tr>
        <tr>
            <td>HRP Project Planning Process & Quote Overview Video</td>
            <td>
                <asp:TextBox ID="txtLink6" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Project Planning Process & Quote Overview PDF</td>
            <td>
                <asp:TextBox ID="txtLink7" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Service Region Map PDF</td>
            <td>
                <asp:TextBox ID="txtLink8" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" class="text-headings" id="A3">Customer User Training</td>
        </tr>
        <tr>
            <td>Customer Training Overview Video</td>
            <td>
                <asp:TextBox ID="txtLink9" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Customer Training Overview PDF</td>
            <td>
                <asp:TextBox ID="txtLink10" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Customer Detailed HRP System Overview Video</td>
            <td>
                <asp:TextBox ID="txtLink11" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Customer Detailed HRP System Overview PDF</td>
            <td>
                <asp:TextBox ID="txtLink12" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Customer Phone App User Guide Video</td>
            <td>
                <asp:TextBox ID="txtLink13" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Customer Phone App User Guide PDF</td>
            <td>
                <asp:TextBox ID="txtLink14" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP File Sharing Platform Video Guide for Customers</td>
            <td>
                <asp:TextBox ID="txtLink15" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP File Sharing Platform PDF Guide for Customers</td>
            <td>
                <asp:TextBox ID="txtLink16" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" class="text-headings" id="A4">Network Member User Training</td>
        </tr>
        <tr>
            <td>Network Member Training Overview Video</td>
            <td>
                <asp:TextBox ID="txtLink17" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Network Member Training Overview PDF</td>
            <td>
                <asp:TextBox ID="txtLink18" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Phone App Video User Guide for Network members</td>
            <td>
                <asp:TextBox ID="txtLink19" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Phone App PDF User Guide for Network members</td>
            <td>
                <asp:TextBox ID="txtLink20" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP File Sharing Platform Video User Guide for Network Members</td>
            <td>
                <asp:TextBox ID="txtLink21" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP File Sharing Platform PDF User Guide for Network Members</td>
            <td>
                <asp:TextBox ID="txtLink22" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Invoicing Video Guide for Organizations</td>
            <td>
                <asp:TextBox ID="txtLink23" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Invoicing PDF Guide for Organizations</td>
            <td>
                <asp:TextBox ID="txtLink24" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Simple Resource Management Video Guide for Organizations</td>
            <td>
                <asp:TextBox ID="txtLink25" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Simple Resource Management PDF Guide for Organizations</td>
            <td>
                <asp:TextBox ID="txtLink26" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Project Planning Guide Video for Network Members</td>
            <td>
                <asp:TextBox ID="txtLink27" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Project Planning Guide PDF for Network Members</td>
            <td>
                <asp:TextBox ID="txtLink28" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" class="text-headings" id="A5">Retail/Design Network Owner User Training</td>
        </tr>
        <tr>
            <td>Home ReProject System Summary Overview Video for Retail/Design Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink29" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Home ReProject System Summary Overview PDF for Retail/Design Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink30" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Home ReProject Phone Application User Guide Video for Retail/Design Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink31" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Home ReProject Phone Application User Guide PDF for Retail/Design Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink32" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Home ReProject File Sharing Platform Guide Video for Retail/Design Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink33" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Home ReProject File Sharing Platform Guide PDF for Retail/Design Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink34" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Network Development Guide Video for Retail/Design Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink35" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Network Development Guide PDF for Retail/Design Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink36" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Management Guide Video for Retail/Design Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink37" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Management Guide PDF for Retail/Design Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink38" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Portfolio Management Guide Video for Retail/Design Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink39" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Portfolio Management Guide PDF for Retail/Design Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink40" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Invoicing System Guide Video for Retail/Design Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink41" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Invoicing System Guide PDF for Retail/Design Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink42" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" class="text-headings" id="A6">FULL-PPM Network Owner User Training</td>
        </tr>
        <tr>
            <td>Home ReProject System Summary Overview Video for Full-PPM Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink43" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Home ReProject System Summary Overview PDF for Full-PPM Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink44" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Home ReProject Phone Application User Guide Video for Full-PPM Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink45" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Home ReProject Phone Application User Guide PDF for Full-PPM Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink46" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Home ReProject File Sharing Platfor User Guide Video for Full-PPM Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink47" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Home ReProject File Sharing Platfor User Guide PDF for Full-PPM Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink48" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Network Development Guide Video for Full-PPM Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink49" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Network Development Guide PDF for Full-PPM Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink50" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Management Guide Video for Full-PPM Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink51" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Management Guide PDF for Full-PPM Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink52" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Portfolio Management Guide Video for Full-PPM Network Ownersd</td>
            <td>
                <asp:TextBox ID="txtLink53" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Project Portfolio Management Guide PDF for Full-PPM Network Ownersd</td>
            <td>
                <asp:TextBox ID="txtLink54" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Invoicing System Guide Video for Full-PPM Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink55" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>HRP Invoicing System Guide PDF for Full-PPM Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink56" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Simple Resource Planning Guide Video for Full-PPM Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink57" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Simple Resource Planning Guide PDF for Full-PPM Network Owners</td>
            <td>
                <asp:TextBox ID="txtLink58" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
    </table></div>
    <br /><br />
    <asp:Button ID="TL" runat="server" Class="submit" Text="SUBMIT" OnClick="TL_Click" />
</asp:Content>
