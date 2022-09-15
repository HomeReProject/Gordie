<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Organization_Form.aspx.cs" Inherits="GORDIE.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="DisplayContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h2 class="heading">Organization Form</h2>
    <asp:MultiView ID="MultiView1" runat="server">
       
        <asp:View ID="View1_General_Info" runat="server">
            <div class="rightcontent">
            <table>
                <tr>
                    <td colspan="2">
                        <h2  class="sub-heading">Organization General Information</h2>
                    </td>
                </tr>

                <tr>
                    <td>Updated On</td>
                    <td>
                        <asp:TextBox ID="txtToday" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Organization Name</td>
                    <td>
                        <asp:TextBox ID="txtOrgName" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Organization Type</td>
                    <td>
                        <asp:DropDownList ID="ddl_OrgType" Class="text-input" runat="server" >
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="HRP Admin"></asp:ListItem>
                            <asp:ListItem Text="Customer"></asp:ListItem>
                            <asp:ListItem Text="Network Member"></asp:ListItem>
                            <asp:ListItem Text="Full-PPM Network Owner"></asp:ListItem>
                            <asp:ListItem Text="Retail/Design Network Owner"></asp:ListItem>
                            <asp:ListItem Text="NA"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Service Region</td>
                    <td>
                        <asp:DropDownList ID="ddl_ServiceRegion" Class="text-input" runat="server"> 
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="New Haven, CT"></asp:ListItem>
                            <asp:ListItem Text="Twin Cities, MN"></asp:ListItem>
                            <asp:ListItem Text="Norwalk, CT"></asp:ListItem>
                        </asp:DropDownList>
                    </td>

                </tr>
                  <tr>
                    <td>Market Category</td>
                    <td>
                        <asp:DropDownList ID="ddl_MarketCategory" Class="text-input" runat="server"> 
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Residential"></asp:ListItem>
                            <asp:ListItem Text="Commercial"></asp:ListItem>
                            <asp:ListItem Text="Residential & Commercial"></asp:ListItem>
                             <asp:ListItem Text="Industrial"></asp:ListItem>
                             <asp:ListItem Text="All"></asp:ListItem>
                        </asp:DropDownList>
                    </td>

                </tr>
                <tr>
                    <td>Join Date</td>
                    <td>
                        <asp:TextBox ID="txtJoinDate" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Member Status</td>
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
                    <td>Functional Group</td>
                    <td>
                        <asp:DropDownList ID="ddl_FunctionalGrp" Class="text-input" runat="server">
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Customer"></asp:ListItem>
                            <asp:ListItem Text="Home ReProject"></asp:ListItem>
                            <asp:ListItem Text="General Contractor"></asp:ListItem>
                            <asp:ListItem Text="Customer-Side Retailer"></asp:ListItem>
                            <asp:ListItem Text="Materials Supplier"></asp:ListItem>
                            <asp:ListItem Text="Specialized Tradesman"></asp:ListItem>
                            <asp:ListItem Text="Municipal"></asp:ListItem>
                            <asp:ListItem Text="Other"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Website URL</td>
                    <td>
                        <asp:TextBox ID="txtWebsite" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Social Media Address</td>
                    <td>
                        <asp:TextBox ID="txtSocial" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Federal EIN</td>
                    <td>
                        <asp:TextBox ID="txtFederal" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>State Tax ID</td>
                    <td>
                        <asp:TextBox ID="txtTaxID" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>State License</td>
                    <td>
                        <asp:TextBox ID="txtLicense" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Billing Address</td>
                    <td>
                        <asp:TextBox ID="Org_Address" Class="text-input" runat="server" Height="56px" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>HQ ZA Location</td>
                    <td>
                        <asp:DropDownList ID="ddl_HQZQ" Class="text-input" runat="server">
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
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>TLA</td>
                    <td>
                        <asp:TextBox ID="txt_TLA" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Are you a Network Owner?</td>
                    <td>
                        <asp:DropDownList ID="ddl_Network_Owner" Class="text-input" runat="server">
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="YES"></asp:ListItem>
                            <asp:ListItem Text="NO"></asp:ListItem>
                            <asp:ListItem Text="N/a"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Network Type?</td>
                    <td>
                        <asp:DropDownList ID="ddl_Network_Type"  Class="text-input" runat="server" >
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Full-PPM"></asp:ListItem>
                            <asp:ListItem Text="Retail/Design"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            </div>
            <div class="rightcontent">
            <table>
            
                <tr>
                    <td>
                        <asp:Button ID="Submit_View1" class="submit" runat="server" Text="Submit" OnClick="Submit_View1_Click" /></td>
                    <td>
                        <asp:Button ID="Next_View2" class="submit" runat="server" Text="Next >> Org Trade Roles" OnClick="Next_View2_Click" /></td>
                </tr>
            </table>
            </div>
            <div Class="label"><asp:Label ID="lbl_View1" Class="text-input" runat="server" Text="Label"></asp:Label></div>
        </asp:View>
        <!--End of View1-->

        <asp:View ID="View2_Trade_Roles" runat="server">
            <div class="rightcontent">
            <table>
                <tr>
                    <td colspan="2">
                        <h2 class="sub-heading">Organization Trade Roles</h2>
                    </td>
                </tr>
                <tr>
                    <td>Organization ID</td>
                    <td>
                        <asp:TextBox ID="View2_OrgID" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Trade Role 1:</td>
                    <td>
                        <asp:DropDownList ID="ddl_TD1" Class="text-input" runat="server">
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Architecture / Design"></asp:ListItem>
                            <asp:ListItem Text="Carpentry"></asp:ListItem>
                            <asp:ListItem Text="Electrical"></asp:ListItem>
                            <asp:ListItem Text="Energy Specialist"></asp:ListItem>
                            <asp:ListItem Text="Engineering"></asp:ListItem>
                            <asp:ListItem Text="Excavation / Septic"></asp:ListItem>
                            <asp:ListItem Text="Flooring"></asp:ListItem>
                            <asp:ListItem Text="General Contracting"></asp:ListItem>
                            <asp:ListItem Text="HVAC"></asp:ListItem>
                            <asp:ListItem Text="Information Technology / Media"></asp:ListItem>
                            <asp:ListItem Text="Landscaping"></asp:ListItem>
                            <asp:ListItem Text="Masonry/Cement"></asp:ListItem>
                            <asp:ListItem Text="Painting"></asp:ListItem>
                            <asp:ListItem Text="Plumbing"></asp:ListItem>
                            <asp:ListItem Text="Project Management"></asp:ListItem>
                            <asp:ListItem Text="Remodeling Retail"></asp:ListItem>
                            <asp:ListItem Text="Roofing"></asp:ListItem>
                            <asp:ListItem Text="Sheet Rock"></asp:ListItem>
                            <asp:ListItem Text="Stone / Countertops"></asp:ListItem>
                            <asp:ListItem Text="Tiling / Carpet"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Trade Role 2:</td>
                    <td>
                        <asp:DropDownList ID="ddl_TD2" Class="text-input" runat="server">
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Architecture / Design"></asp:ListItem>
                            <asp:ListItem Text="Carpentry"></asp:ListItem>
                            <asp:ListItem Text="Electrical"></asp:ListItem>
                            <asp:ListItem Text="Energy Specialist"></asp:ListItem>
                            <asp:ListItem Text="Engineering"></asp:ListItem>
                            <asp:ListItem Text="Excavation / Septic"></asp:ListItem>
                            <asp:ListItem Text="Flooring"></asp:ListItem>
                            <asp:ListItem Text="General Contracting"></asp:ListItem>
                            <asp:ListItem Text="HVAC"></asp:ListItem>
                            <asp:ListItem Text="Information Technology / Media"></asp:ListItem>
                            <asp:ListItem Text="Landscaping"></asp:ListItem>
                            <asp:ListItem Text="Masonry/Cement"></asp:ListItem>
                            <asp:ListItem Text="Painting"></asp:ListItem>
                            <asp:ListItem Text="Plumbing"></asp:ListItem>
                            <asp:ListItem Text="Project Management"></asp:ListItem>
                            <asp:ListItem Text="Remodeling Retail"></asp:ListItem>
                            <asp:ListItem Text="Roofing"></asp:ListItem>
                            <asp:ListItem Text="Sheet Rock"></asp:ListItem>
                            <asp:ListItem Text="Stone / Countertops"></asp:ListItem>
                            <asp:ListItem Text="Tiling / Carpet"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Trade Role 3:</td>
                    <td>
                        <asp:DropDownList ID="ddl_TD3" Class="text-input" runat="server" >
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Architecture / Design"></asp:ListItem>
                            <asp:ListItem Text="Carpentry"></asp:ListItem>
                            <asp:ListItem Text="Electrical"></asp:ListItem>
                            <asp:ListItem Text="Energy Specialist"></asp:ListItem>
                            <asp:ListItem Text="Engineering"></asp:ListItem>
                            <asp:ListItem Text="Excavation / Septic"></asp:ListItem>
                            <asp:ListItem Text="Flooring"></asp:ListItem>
                            <asp:ListItem Text="General Contracting"></asp:ListItem>
                            <asp:ListItem Text="HVAC"></asp:ListItem>
                            <asp:ListItem Text="Information Technology / Media"></asp:ListItem>
                            <asp:ListItem Text="Landscaping"></asp:ListItem>
                            <asp:ListItem Text="Masonry/Cement"></asp:ListItem>
                            <asp:ListItem Text="Painting"></asp:ListItem>
                            <asp:ListItem Text="Plumbing"></asp:ListItem>
                            <asp:ListItem Text="Project Management"></asp:ListItem>
                            <asp:ListItem Text="Remodeling Retail"></asp:ListItem>
                            <asp:ListItem Text="Roofing"></asp:ListItem>
                            <asp:ListItem Text="Sheet Rock"></asp:ListItem>
                            <asp:ListItem Text="Stone / Countertops"></asp:ListItem>
                            <asp:ListItem Text="Tiling / Carpet"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Trade Role 4:</td>
                    <td>
                        <asp:DropDownList ID="ddl_TD4" Class="text-input" runat="server" >
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Architecture / Design"></asp:ListItem>
                            <asp:ListItem Text="Carpentry"></asp:ListItem>
                            <asp:ListItem Text="Electrical"></asp:ListItem>
                            <asp:ListItem Text="Energy Specialist"></asp:ListItem>
                            <asp:ListItem Text="Engineering"></asp:ListItem>
                            <asp:ListItem Text="Excavation / Septic"></asp:ListItem>
                            <asp:ListItem Text="Flooring"></asp:ListItem>
                            <asp:ListItem Text="General Contracting"></asp:ListItem>
                            <asp:ListItem Text="HVAC"></asp:ListItem>
                            <asp:ListItem Text="Information Technology / Media"></asp:ListItem>
                            <asp:ListItem Text="Landscaping"></asp:ListItem>
                            <asp:ListItem Text="Masonry/Cement"></asp:ListItem>
                            <asp:ListItem Text="Painting"></asp:ListItem>
                            <asp:ListItem Text="Plumbing"></asp:ListItem>
                            <asp:ListItem Text="Project Management"></asp:ListItem>
                            <asp:ListItem Text="Remodeling Retail"></asp:ListItem>
                            <asp:ListItem Text="Roofing"></asp:ListItem>
                            <asp:ListItem Text="Sheet Rock"></asp:ListItem>
                            <asp:ListItem Text="Stone / Countertops"></asp:ListItem>
                            <asp:ListItem Text="Tiling / Carpet"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Trade Role 5:</td>
                    <td>
                        <asp:DropDownList ID="ddl_TD5" Class="text-input" runat="server" >
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Architecture / Design"></asp:ListItem>
                            <asp:ListItem Text="Carpentry"></asp:ListItem>
                            <asp:ListItem Text="Electrical"></asp:ListItem>
                            <asp:ListItem Text="Energy Specialist"></asp:ListItem>
                            <asp:ListItem Text="Engineering"></asp:ListItem>
                            <asp:ListItem Text="Excavation / Septic"></asp:ListItem>
                            <asp:ListItem Text="Flooring"></asp:ListItem>
                            <asp:ListItem Text="General Contracting"></asp:ListItem>
                            <asp:ListItem Text="HVAC"></asp:ListItem>
                            <asp:ListItem Text="Information Technology / Media"></asp:ListItem>
                            <asp:ListItem Text="Landscaping"></asp:ListItem>
                            <asp:ListItem Text="Masonry/Cement"></asp:ListItem>
                            <asp:ListItem Text="Painting"></asp:ListItem>
                            <asp:ListItem Text="Plumbing"></asp:ListItem>
                            <asp:ListItem Text="Project Management"></asp:ListItem>
                            <asp:ListItem Text="Remodeling Retail"></asp:ListItem>
                            <asp:ListItem Text="Roofing"></asp:ListItem>
                            <asp:ListItem Text="Sheet Rock"></asp:ListItem>
                            <asp:ListItem Text="Stone / Countertops"></asp:ListItem>
                            <asp:ListItem Text="Tiling / Carpet"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            </div>    
            <div class="rightcontent">
            <table>
                <tr>
                    <td><asp:Button ID="Back_View1" class="submit" runat="server" Text="<< Back" OnClick="Back_View1_Click" /></td>
                    <td><asp:Button ID="Submit_View2" class="submit" runat="server" Text="Submit" OnClick="Submit_View2_Click" /></td>
                    <td><asp:Button ID="Next_View3" class="submit" runat="server" Text="Next >> Org Contacts" OnClick="Next_View3_Click" /></td>
                </tr>
            </table>
            </div>
            <div Class="label"><asp:Label ID="lbl_View2" runat="server" Text="Label"></asp:Label></div>
        </asp:View>
        <!--End of View2-->

        <asp:View ID="View3_Org_Contacts" runat="server">
            <div Class="label"><asp:Label ID="lbl_View3" runat="server" Text="Label"></asp:Label></div>
            <div class="rightcontent">
            <table>
                <tr>
                    <td colspan="2">
                        <h2 class="sub-heading">Organization Contacts</h2>
                    </td>
                </tr>
                <tr>
                    <td>Organization ID</td>
                    <td><asp:TextBox ID="View3_OrgID"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" class="text-headings">Leader Contact Information</td>
                </tr>
                <tr>
                    <td>Leader Full Name</td>
                    <td><asp:TextBox ID="LeaderFullName"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Leader Email ID</td>
                    <td><asp:TextBox ID="LeaderEmail"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Leader Phone Number</td>
                    <td>
                        <asp:TextBox ID="LeaderPhone"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" class="text-headings">Organization Key Contact: 1</td>
                </tr>
                <tr>
                    <td>Key-Contact:1 Full Name</td>
                    <td><asp:TextBox ID="Key1FullName"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Key-Contact:1 Email ID</td>
                    <td><asp:TextBox ID="Key1Email"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Key-Contact:1 Phone Number</td>
                    <td><asp:TextBox ID="Key1Phone"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Key-Contact:1 Phone Carrier</td>
                    <td>
                        <asp:DropDownList ID="ddl_Key1PhoneCarrier" Class="text-input" runat="server" >
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
                    <td>Key-Contact:1 SMS Code</td>
                    <td><asp:TextBox ID="Key1SMSCode"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" class="text-headings">Organization Key Contact: 2</td>
                </tr>
                <tr>
                    <td>Key-Contact:2 Full Name</td>
                    <td><asp:TextBox ID="Key2FullName"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Key-Contact:2 Email ID</td>
                    <td><asp:TextBox ID="Key2Email"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Key-Contact:2 Phone Number</td>
                    <td><asp:TextBox ID="Key2Phone"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Key-Contact:2 Phone Carrier</td>
                    <td>
                        <asp:DropDownList ID="ddl_Key2PhoneCarrier" Class="text-input" runat="server" >
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
                    <td>Key-Contact:2 SMS Code</td>
                    <td>
                        <asp:TextBox ID="Key2SMSCode"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" class="text-headings">Organization Project Manager: 1</td>
                </tr>
                <tr>
                    <td>Project-Manager:1 Full Name</td>
                    <td>
                        <asp:TextBox ID="PM1FullName"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Project-Manager:1 Email ID</td>
                    <td>
                        <asp:TextBox ID="PM1Email"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Project-Manager:1 Phone Number</td>
                    <td>
                        <asp:TextBox ID="PM1Phone"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Project-Manager:1 Phone Carrier</td>
                    <td>
                        <asp:DropDownList ID="ddl_PM1PhoneCarrier" Class="text-input" runat="server" >
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
                    <td>Project-Manager:1 SMS Code</td>
                    <td>
                        <asp:TextBox ID="PM1SMSCode"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" class="text-headings">Organization Project Manager: 2</td>
                </tr>
                <tr>
                    <td>Project-Manager:2 Full Name</td>
                    <td>
                        <asp:TextBox ID="PM2FullName"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Project-Manager:2 Email ID</td>
                    <td>
                        <asp:TextBox ID="PM2Email"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Project-Manager:2 Phone Number</td>
                    <td>
                        <asp:TextBox ID="PM2Phone"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Project-Manager:2 Phone Carrier</td>
                    <td>
                        <asp:DropDownList ID="ddl_PM2PhoneCarrier" Class="text-input" runat="server" >
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
                    <td>Project-Manager:2 SMS Code</td>
                    <td>
                        <asp:TextBox ID="PM2SMSCode"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" class="text-headings">Organization Accounting Contact</td>
                </tr>
                <tr>
                    <td>Accounting_Contact Full Name</td>
                    <td>
                        <asp:TextBox ID="ACFullName"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Accounting_Contact Email ID</td>
                    <td>
                        <asp:TextBox ID="ACEmail"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Accounting_Contact Phone Number</td>
                    <td>
                        <asp:TextBox ID="ACPhone"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Accounting_Contact Phone Carrier</td>
                    <td>
                        <asp:DropDownList ID="ddl_ACPhoneCarrier" Class="text-input" runat="server" >
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
                    <td>Accounting_Contact SMS Code</td>
                    <td>
                        <asp:TextBox ID="ACSMSCode"  Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            </div>
            <div class="rightcontent">
            <table>
                <tr>
                    <td><asp:Button ID="Back_View2" class="submit" runat="server" Text="<< Back" OnClick="Back_View2_Click" /></td>
                    <td><asp:Button ID="Submit_View3" class="submit" runat="server" Text="Submit" OnClick="Submit_View3_Click" /></td>
                    <td><asp:Button ID="Next_View4" class="submit" runat="server" Text="Next >> Org Scores" OnClick="Next_View4_Click" /></td>
                </tr>
            </table>
            </div>
        </asp:View>
        <!--End of View3-->

        <asp:View ID="View4_Org_Scores" runat="server">
            <div class="rightcontent">
            <table>
                <tr>
                    <td colspan="2">
                        <h2 class="sub-heading">Organization Scores</h2>
                    </td>
                </tr>
                <tr>
                    <td>Organization ID</td>
                    <td><asp:TextBox ID="View4_OrgID" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Updated On</td>
                    <td><asp:TextBox ID="txtUpdated" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Trust Level Score</td>
                    <td><asp:DropDownList ID="ddl_Trust" Class="text-input" runat="server" >
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Fully Trusted" Value="10"></asp:ListItem>
                            <asp:ListItem Text="Mostly Trusted" Value="7"></asp:ListItem>
                            <asp:ListItem Text="New &Unknown" Value="5"></asp:ListItem>
                            <asp:ListItem Text="On Probation" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Rejected" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>Quality Level Score</td>
                    <td>
                        <asp:DropDownList ID="ddl_Quality" Class="text-input" runat="server">
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Higest" Value="10"></asp:ListItem>                            
                            <asp:ListItem Text="Good" Value="7"></asp:ListItem>
                            <asp:ListItem Text="Average" Value="5"></asp:ListItem>
                            <asp:ListItem Text="Low" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Poor" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>Value Level Score</td>
                    <td>
                        <asp:DropDownList ID="ddl_Value" Class="text-input" runat="server">
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Higest" Value="10"></asp:ListItem>                            
                            <asp:ListItem Text="Good" Value="7"></asp:ListItem>
                            <asp:ListItem Text="Average" Value="5"></asp:ListItem>
                            <asp:ListItem Text="Low" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Poor" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>Timeliness Level Score</td>
                    <td>
                        <asp:DropDownList ID="ddl_Timeliness" Class="text-input" runat="server">
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Always On Time" Value="10"></asp:ListItem>
                            <asp:ListItem Text="Mostly On Time" Value="7"></asp:ListItem>
                            <asp:ListItem Text="Misses About Half the Time" Value="5"></asp:ListItem>
                            <asp:ListItem Text="Unreliable Show Up" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Always Late" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>Problem Solving Skill Level Score</td>
                    <td>
                        <asp:DropDownList ID="ddl_ProblemSolving" Class="text-input" runat="server" >
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Excellent" Value="10"></asp:ListItem>
                            <asp:ListItem Text="Good" Value="7"></asp:ListItem>
                            <asp:ListItem Text="Average" Value="5"></asp:ListItem>
                            <asp:ListItem Text="Poor" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Dangerous" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

            </table>
            </div>
            <div class="rightcontent">
            <table>
                <tr>
                    <td><asp:Button ID="Back_view3" class="submit" runat="server" Text="<< Back" OnClick="Back_view3_Click" /></td>
                    <td><asp:Button ID="Submit_View4" class="submit" runat="server" Text="Submit" OnClick="Submit_View4_Click" /></td>
                    <td><asp:Button ID="Next_View5" class="submit" runat="server" Text="Next >> Org Add Networks" OnClick="Next_View5_Click" /></td>
                </tr>
            </table>
            </div>
            <div class="label"><asp:Label ID="lbl_View4" runat="server" Text="Label"></asp:Label></div>
        </asp:View>
        <!--End of View4-->

        <asp:View ID="View5_Networks" runat="server">
            <div class="rightcontent">
            <table>
                <tr>
                    <td colspan="2">
                        <h2 class="sub-heading">Add Networks to the Organization</h2>
                    </td>
                </tr>

                <tr>
                    <td>Organization ID</td>
                    <td>
                        <asp:TextBox ID="View5_OrgID" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Service Region</td>
                    <td>
                        <asp:DropDownList ID="ddl_SR" Class="text-input" runat="server">
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="New Haven, CT"></asp:ListItem>
                            <asp:ListItem Text="Norwalk, CT"></asp:ListItem>
                            <asp:ListItem Text="Twin Cities, MN"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>Network 1</td>
                    <td>
                        <asp:TextBox ID="txtNetwork1" Class="text-input" runat="server" Text="Home ReProject"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Network 2</td>
                    <td>
                        <asp:TextBox ID="txtNetwork2" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Network 3</td>
                    <td>
                        <asp:TextBox ID="txtNetwork3" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Network 4</td>
                    <td>
                        <asp:TextBox ID="txtNetwork4" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Network 5</td>
                    <td>
                        <asp:TextBox ID="txtNetwork5" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Network 6</td>
                    <td>
                        <asp:TextBox ID="txtNetwork6" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Network 7</td>
                    <td>
                        <asp:TextBox ID="txtNetwork7" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Network 8</td>
                    <td>
                        <asp:TextBox ID="txtNetwork8" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Network 9</td>
                    <td>
                        <asp:TextBox ID="txtNetwork9" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Network 10</td>
                    <td>
                        <asp:TextBox ID="txtNetwork10" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>


            </table></div>
            <div class="rightcontent">
            <table>
                <tr>
                    <td><asp:Button ID="Back_view4" class="submit" runat="server" Text="<< Back" OnClick="Back_view4_Click" /></td>
                    <td><asp:Button ID="Submit_view5" class="submit" runat="server" Text="Submit" OnClick="Submit_View5_Click" /></td>
                    <td><asp:Button ID="Next_View6" class="submit" runat="server" Text="Next >> Org ShareFile Links" OnClick="Next_View6_Click" /></td>
                </tr>
            </table></div>
            <div class="label"><asp:Label ID="lbl_View5" runat="server" Text="Label"></asp:Label></div>
            <div class="space"></div>
            <h2 class="heading">Network List:</h2>
            <div class="grid rightcontent">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>"
                SelectCommand="select Org_Name as [Network List], Service_region, Network_owner, Network_type from Demo_NT_Organization where Network_owner = 'YES'"></asp:SqlDataSource>
            <asp:GridView ID="GridView_Networks" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="652px">
                <Columns>
                    <asp:BoundField DataField="Network List" HeaderText="Network List" SortExpression="Network List" />
                    <asp:BoundField DataField="Service_region" HeaderText="Service_region" SortExpression="Service_region" />
                    <asp:BoundField DataField="Network_owner" HeaderText="Network_owner" SortExpression="Network_owner" />
                    <asp:BoundField DataField="Network_type" HeaderText="Network_type" SortExpression="Network_type" />
                </Columns>
            </asp:GridView>
            </div>

        </asp:View>
        <!--End of View5-->

        <asp:View ID="View6_ShareFile_Links" runat="server">
            <div class="rightcontent">
            <table>
                <tr>
                    <td colspan="2">
                        <h2 class="sub-heading">Organization Core ShareFile Links</h2>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-headings">Network Owner</td>
                </tr>
                <tr>
                    <td>Org_ID</td>
                    <td>
                        <asp:TextBox ID="View6_OrgID" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Owner's Base Folder</td>
                    <td>
                        <asp:TextBox ID="txt_Owner" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>New Project Oppurtunities Folder</td>
                    <td>
                        <asp:TextBox ID="txt_NewPrj" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Quote Packages Folder</td>
                    <td>
                        <asp:TextBox ID="txt_Quote" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Active Projects Folder</td>
                    <td>
                        <asp:TextBox ID="txt_Active" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" class="text-headings">Network Member
                    </td>
                </tr>
                <tr>
                    <td>Member's Base Folder</td>
                    <td>
                        <asp:TextBox ID="txt_Member" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
            </table></div>
            <div class="rightcontent">
            <table>
                <tr>
                    <td>
                        <asp:Button ID="Back_View5" class="submit" runat="server" Text="<< Back" OnClick="Back_View5_Click" /></td>
                    <td>
                        <asp:Button ID="Submit_view6" class="submit" runat="server" Text="Submit" OnClick="Submit_view6_Click" /></td>
                    <td>
                        <asp:Button ID="Next_View7" class="submit" runat="server" Text="Next >> Org Membership Billing" OnClick="Next_View7_Click" /></td>
                </tr>
            </table></div>
            <div class="label"><asp:Label ID="lbl_View6" runat="server" Text="Label"></asp:Label></div>
        </asp:View>
        <!--End of View6-->

        <asp:View ID="View7_Membership_Billing" runat="server">
            <div class="rightcontent">
            <table>
                <tr>
                    <td colspan="2">
                        <h2 class="sub-heading">Organization Membership Billing</h2>
                    </td>
                </tr>
                <tr>
                    <td>Org ID</td>
                    <td>
                        <asp:TextBox ID="View7_OrgID" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Updated On</td>
                    <td>
                        <asp:TextBox ID="txt_updated" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Membership Renewable Frequency</td>
                    <td>
                        <asp:DropDownList ID="ddl_RenewableFreq" Class="text-input" runat="server" >
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Annually"></asp:ListItem>
                            <asp:ListItem Text="Quarterly"></asp:ListItem>
                            <asp:ListItem Text="Monthly"> </asp:ListItem>
                            <asp:ListItem Text="Weekly"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Organization Type</td>
                    <td>
                        <asp:TextBox ID="txt_autofill" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>*Base Membership Fee</td>
                    <td>
                        <asp:TextBox ID="txt_BaseFee" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Initial Billing Option</td>
                    <td>
                        <asp:DropDownList ID="ddl_InitialOption" Class="text-input" runat="server">
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Free"></asp:ListItem>
                            <asp:ListItem Text="Free 1 Qtr Trail"></asp:ListItem>
                            <asp:ListItem Text="Invoice Now"> </asp:ListItem>

                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Payment Net Terms</td>
                    <td>
                        <asp:TextBox ID="txt_NetTerms" Class="text-input" runat="server" value="Net 10 days"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Last Organization Membership Invoice Date</td>
                    <td>
                        <asp:TextBox ID="txt_LastInvoiceDate" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Payment Due Date</td>
                    <td>
                        <asp:TextBox ID="txt_PayDate" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Pays Through Date</td>
                    <td>
                        <asp:TextBox ID="txt_PayThrough" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Payment Status</td>
                    <td>
                        <asp:DropDownList ID="ddl_PayStatus" Class="text-input" runat="server" >
                            <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                            <asp:ListItem Text="Current"></asp:ListItem>
                            <asp:ListItem Text="Late"></asp:ListItem>
                            <asp:ListItem Text="Paid & Closed"></asp:ListItem>
                            <asp:ListItem Text="Pending"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Next Membership Invoice Date</td>
                    <td><asp:TextBox ID="txt_NextInvoiceDate" Class="text-input" runat="server"></asp:TextBox></td>
                </tr>
            </table></div>
            <div class="rightcontent">
            <table>
                <tr>
                    <td>
                        <asp:Button ID="Back_View6" class="submit" runat="server" Text="<< Back" OnClick="Back_View6_Click" /></td>
                    <td>
                        <asp:Button ID="Submit_View7" class="submit" runat="server" Text="Submit" OnClick="Submit_View7_Click" /></td>
                    <td>
                        <asp:Button ID="Back_Home" class="submit" runat="server" Text="Home" OnClick="Back_Home_Click" /></td>
                </tr>
            </table></div>
            <div class="label"><asp:Label ID="lbl_View7" runat="server" Text="Label"></asp:Label></div>
        </asp:View>
        <!--End of View7-->
           
    </asp:MultiView>

</asp:Content>
