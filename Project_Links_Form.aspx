<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Project_Links_Form.aspx.cs" Inherits="GORDIE.Webform4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
     <h1 class="heading">Project Link Form</h1>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <div class="rightcontent">
     <table>
        <tr>
            <td >
                <h2 class="sub-heading">Project Link Information</h2>
            </td>
            
        </tr> 
        
     </table>
        </div>
    <fieldset>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="General Contractor"/>
        <asp:CheckBox ID="CheckBox2" runat="server" text="Engineer"/>
    </fieldset>
    <br />

    <asp:Button ID="Button1" runat="server" Class="submit" Text="Button" OnClick="Button1_Click" />

</asp:Content>
