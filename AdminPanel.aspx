<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="ConnectNow.Controls.WebForm1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <div style="margin-top:5px;" class="row ">
        <div class="col-md-12" style="text-align:center;">
            <div style="background-color:#a2a2a3" class="col-md-6 col-md-push-3 profile-usertitle-name">Admin Panel</div>
        </div>
    </div>

    <div class="row">

        <div class="col-md-14">
            <div class="jumbotron messages">
                <div class="header">
                    Manage Users
                </div>
                <div class="body">
                    <div style="width:100%">
                        <asp:Table ID="Table2" class="table table-bordered table-hover" runat="server">
                            <asp:TableHeaderRow>
                                <asp:TableCell>Email</asp:TableCell>
                                <asp:TableCell>First Name</asp:TableCell>
                                <asp:TableCell>Last Name</asp:TableCell>
                                <asp:TableCell>Dob</asp:TableCell>
                                <asp:TableCell>City</asp:TableCell>
                                <asp:TableCell>State</asp:TableCell>
                                <asp:TableCell>Phone</asp:TableCell>
                                <asp:TableCell>Occupation</asp:TableCell>
                                <asp:TableCell>Username</asp:TableCell>
                                <asp:TableCell>Password</asp:TableCell>
                            </asp:TableHeaderRow>
                        </asp:Table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
