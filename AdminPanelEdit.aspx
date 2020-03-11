<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="AdminPanelEdit.aspx.cs" Inherits="ConnectNow.AdminPanelEdit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <div style="margin-top: 5px;" class="row ">
        <div class="col-md-12" style="text-align: center;">
            <div style="background-color: #a2a2a3" class="col-md-6 col-md-push-3 profile-usertitle-name">Admin Panel</div>
        </div>
    </div>

    <div class="row">

        <div class="col-md-14">
            <div class="jumbotron messages">
                <div class="header">
                    Edit User
                </div>
                <div class="body">

                    <asp:TextBox Style=" margin-left:375px; border: 2px solid black; text-align-last: center;" ID="EmailEdit" placeholder="Email Address" class="form-control" runat="server"></asp:TextBox>


                    <asp:TextBox Style=" margin-left:375px; margin-top: 10px; border: 2px solid black; text-align-last: center;" ID="FNameEdit1" placeholder="First Name" class="form-control" runat="server"></asp:TextBox>

                    <asp:TextBox Style=" margin-left:375px; margin-top: 10px; border: 2px solid black; text-align-last: center;" ID="LNameEdit" placeholder="Last Name" class="form-control" runat="server"></asp:TextBox>


                    <asp:TextBox Style=" margin-left:375px; margin-top: 10px; border: 2px solid black; text-align-last: center;" ID="DOBEdit" placeholder="Date of Birth" class="form-control" runat="server"></asp:TextBox>

                    <asp:TextBox Style=" margin-left:375px; margin-top: 10px; border: 2px solid black; text-align-last: center;" ID="CityEdit" placeholder="City" class="form-control" runat="server"></asp:TextBox>

                    <asp:DropDownList Style=" margin-left:375px; margin-top: 10px; border: 2px solid black; text-align-last: center; margin-top: 5px; color: #999;" class="form-control" ID="StateEdit" runat="server">
                        <asp:ListItem style="display: none;" Value="" Text="State"></asp:ListItem>
                        <asp:ListItem style="color: black;" Value="AL">AL</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="AK">AK</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="AZ">AZ</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="AR">AR</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="CA">CA</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="CO">CO</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="CT">CT</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="DC">DC</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="DE">DE</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="FL">FL</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="GA">GA</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="HI">HI</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="ID">ID</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="IL">IL</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="IN">IN</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="IA">IA</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="KS">KS</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="KY">KY</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="LA">LA</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="ME">ME</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="MD">MD</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="MA">MA</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="MI">MI</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="MN">MN</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="MS">MS</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="MO">MO</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="MT">MT</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="NE">NE</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="NV">NV</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="NH">NH</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="NJ">NJ</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="NM">NM</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="NY">NY</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="NC">NC</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="ND">ND</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="OH">OH</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="OK">OK</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="OR">OR</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="PA">PA</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="RI">RI</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="SC">SC</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="SD">SD</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="TN">TN</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="TX">TX</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="UT">UT</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="VT">VT</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="VA">VA</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="WA">WA</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="WV">WV</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="WI">WI</asp:ListItem>
                        <asp:ListItem style="color: black;" Value="WY">WY</asp:ListItem>
                    </asp:DropDownList>


                    <asp:TextBox Style=" margin-left:375px; margin-top: 10px; border: 2px solid black; text-align-last: center;" ID="PhoneEdit" placeholder="Phone Number" class="form-control" runat="server"></asp:TextBox>

                    <asp:DropDownList Style=" margin-left:375px; margin-top: 10px; color: #999; border: 2px solid black; text-align-last: center;" class="form-control" ID="OccupationEdit" runat="server">
                        <asp:ListItem Value="" style="display: none;" Text="Occupation"></asp:ListItem>
                        <asp:ListItem Text="Software Engineer" Value="Software_Engineer"></asp:ListItem>
                        <asp:ListItem Text="Cyber Security Specialist" Value="Cyber_Security_Specialist"></asp:ListItem>
                        <asp:ListItem Text="Network Engineer" Value="Network_Engineer"></asp:ListItem>
                        <asp:ListItem Text="Database Administrator" Value="Database_Administrator"></asp:ListItem>
                        <asp:ListItem Text="Frontend Designer" Value="Frontend_Designer"></asp:ListItem>
                    </asp:DropDownList>

                    <asp:TextBox Style=" margin-left:375px; margin-top: 10px; border: 2px solid black; text-align-last: center;" ID="UsernameEdit" placeholder="Username" class="form-control" runat="server"></asp:TextBox>
                    
                    <asp:TextBox Style=" margin-left:375px; margin-top: 10px; border: 2px solid black; text-align-last: center;" ID="PasswordEdit" placeholder="Password" class="form-control" runat="server"></asp:TextBox>

                    <asp:Button ID="EditUserBTN" CssClass="btn btn-default" style=" margin-left:375px; background-color:#BF0E14; width:100%; float:left; margin-top:10px;"  runat="server" Text="Edit User" OnClick="EditUserBTN_Click" />


                </div>
            </div>
        </div>
    </div>
</asp:Content>
