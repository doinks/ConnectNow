<%@ Page Title="profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Frontend.aspx.cs" Inherits="ConnectNow.Frontend" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="jumbotron profile" style="margin-top: 100px">

                <div class="container">
                    <div class="row profile">
                        <div class="col-md-3">
                            <div class="profile-sidebar">
                                <div class="profile-userpic">
                                    <img src="images/Frontend.png" class="img-responsive" alt="" />
                                </div>
                                <div class="profile-usertitle">
                                    <div class="group-usertitle-groups mx-auto">
                                        Users
                                       
                                        <% foreach (var user in Users)
                                            { %>


                                        <div><%= user.Name %></div>

                                        <% } %>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="row profile-content">
                                <div class="col-md-6 col-md-push-3 profile-usertitle-name">
                                    Frontend Developers
					           
                                </div>
                            </div>
                            <br />
                            <div class="profile-usertitle-activity">

                                <div class="createPost" style="height: 120px;">
                                    <div class="header">
                                        Create Post
                                    </div>
                                    <div class="body">
                                        <asp:TextBox Style="width: 80%; color:black; background-color: #E3E3E3;" ID="NewMessage" runat="server" />

                                        <asp:Button CssClass="btn" Style="width: 75px;" ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />

                                    </div>
                                </div>

                                <div class="createPost" style="height: 230px">
                                    <div>
                                        <% foreach (var message in Messages)
                                            { %>


                                        <div><%= message.UserName %>: <%= message.MessageText %></div>

                                        <% } %>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
