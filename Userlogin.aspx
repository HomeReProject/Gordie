<%@ Page Title="" Language="C#" MasterPageFile="~/HomeLogin.Master" AutoEventWireup="true" CodeBehind="Userlogin.aspx.cs" Inherits="GORDIE.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HomeContentPlaceholder" runat="server">


    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="images/userlogin.jpg" /></center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                               <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                              
                               <div class="form-group" style="margin-bottom:10px;">
                                   <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
                               </div>
                               
                               <div class="form-group" style="margin-bottom:10px;">
                                   <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                               </div>

                                <div class="form-group">
                                    <asp:Button ID="Login" Class="submit-wide" runat="server" Text="Login" OnClick="Login_Click" />
                                </div>
                                

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




</asp:Content>
