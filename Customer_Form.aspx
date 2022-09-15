<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer_Form.aspx.cs" Inherits="GORDIE.WebForm1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayContentPlaceHolder" runat="server">
    <div class="label"><asp:Label ID="lbl_Customer" runat="server"></asp:Label></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1 class="heading">Customer Form</h1>
    <div class="rightcontent">
    <table>
        <tr>
            <td colspan="2">
                <h2 class="sub-heading">Customer General Information</h2>
            </td>
        </tr>
        <tr>
            <td>Profile Received Date</td>
            <td><asp:TextBox ID="ProfileReceivedDate" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>First Name</td>
            <td><asp:TextBox ID="FirstName" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Last Name</td>
            <td><asp:TextBox ID="LastName" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Service Region</td>
            <td>
                <asp:DropDownList ID="ServiceRegion" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="New Haven, CT"></asp:ListItem>
                    <asp:ListItem Text="Twin Cities, MN"></asp:ListItem>
                    <asp:ListItem Text="Norwalk, CT"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>Customer Type</td>
            <td>
                <asp:DropDownList ID="CustomerType" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Home"></asp:ListItem>
                    <asp:ListItem Text="Commercial"></asp:ListItem>
                    <asp:ListItem Text="Unknown"></asp:ListItem>

                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>Email Address</td>
            <td><asp:TextBox ID="EmailAddress" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Mobile Phone Number</td>
            <td><asp:TextBox ID="PhoneNumber" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Phone Carrier</td>
             <td>
                        <asp:DropDownList ID="ddl_CustPhoneCarrier" Class="text-input" runat="server" >
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Verizon"></asp:ListItem>
                            <asp:ListItem Text="T-Mobile"></asp:ListItem>
                            <asp:ListItem Text="Sprint"></asp:ListItem>
                            <asp:ListItem Text="AT&T"></asp:ListItem>
                            <asp:ListItem Text="Visible"></asp:ListItem>
                            <asp:ListItem Text="MintMobile"></asp:ListItem>
                            <asp:ListItem Text="Cricket"></asp:ListItem>
                            <asp:ListItem Text="GoogleFi"></asp:ListItem>
                            <asp:ListItem Text="Twigby"></asp:ListItem>
                            <asp:ListItem Text="Others"></asp:ListItem>
                             </asp:DropDownList>
                    </td>
        </tr>

        <tr>
            <td>SMS Code</td>
            <td><asp:TextBox ID="SMSCode" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Customer Address Line1</td>
            <td><asp:TextBox ID="Address1" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Customer Address Line2</td>
            <td><asp:TextBox ID="Address2" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>City</td>
            <td><asp:TextBox ID="City" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>State</td>
            <td><asp:TextBox ID="State" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Zip</td>
            <td><asp:TextBox ID="Zip" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>HRP Connection</td>
            <td>
                <asp:DropDownList ID="HRP" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Your remodeling retailer"></asp:ListItem>
                    <asp:ListItem Text="Your general contractor"></asp:ListItem>
                    <asp:ListItem Text="Our sign on a vehicle in town"></asp:ListItem>
                    <asp:ListItem Text="A media advertisement"></asp:ListItem>
                    <asp:ListItem Text="Our website"></asp:ListItem>
                    <asp:ListItem Text="A friend's recommendation"></asp:ListItem>
                    <asp:ListItem Text="Other"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <h2 class="sub-heading">Customer's Access Level & Files PIN</h2>
            </td>
        </tr>

        <tr>
            <td>ShareFile Access Level</td>
            <td>
                <asp:DropDownList ID="ShareFileAccessLevel" Class="text-input" runat="server">
                    <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                    <asp:ListItem Selected="True" Text="Customer" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Full PPM Network Owner"></asp:ListItem>
                    <asp:ListItem Text="Network Member"></asp:ListItem>
                    <asp:ListItem Text="Retail/Design Network Owner"></asp:ListItem>
                    <asp:ListItem Text="None"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>File Access PIN</td>
            <td><asp:TextBox ID="PIN" Class="text-input" runat="server"></asp:TextBox></td>
        </tr>
    </table></div>
    <br />

    <asp:Button ID="btn_Customer_Submit" class="submit" runat="server" Text="Submit" OnClick="Submit_Click" /><br />
</asp:Content>

