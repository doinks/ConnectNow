<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ConnectNow._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-7">
            <div class="jumbotron" style="margin-top: 45px; margin-left:14px; margin-right:14px; height:800px;">

                <h2 style="margin-top:70px;">Welcome to <span class="white">Connect</span><span class="black">Now</span> !</h2>
                <br />
                <br />
                <p style="text-align: left">A social Networking platform connecting you to local professionals in your area.</p>

                <p style="text-align: left">The mission of ConnectNow is simple: connect professionals to make them more productive and successful.</p>

                <p>
                    <img src="images/Office.jpg" class="img-responsive" />
                </p>

            </div>
        </div>
        <div class="col-md-1">
        </div>
        <div class="col-md-4" style="margin-top: 25px">
            <div style="margin-right:15px; height:800px;" class="jumbotron">
                <h2>Create Account</h2>

                <div class="row">
                    <div class="col-md-12">
                        <!--<input type="text" class="form-control" placeholder="Email Address" />-->
                       <asp:RegularExpressionValidator validationexpression= "^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" style="color:red;" ID="eMailValidate" ControlToValidate="eMail" runat="server" ErrorMessage="Email* Ex: Example@Example.com"></asp:RegularExpressionValidator>
                        <asp:TextBox style="margin-top:9px;" ID="eMail" CssClass="form-control" placeholder="Email Address" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <!--<input type="text" class="form-control" placeholder="First Name" />-->
                        <asp:RegularExpressionValidator ValidationExpression="^[a-zA-Z\s]+$" style="color:red;" ID="fNameValidate" ControlToValidate="fName" runat="server" ErrorMessage="First Name*"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="fName" CssClass="form-control" placeholder="First Name" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <!--<input type="text" class="form-control" placeholder="Last Name" />-->
                         <asp:RegularExpressionValidator ValidationExpression="^[a-zA-Z\s]+$" style="color:red;" ID="lNameValidate" ControlToValidate="lName" runat="server" ErrorMessage="Last Name*"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="lName" CssClass="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <!--<input type="text" class="form-control" placeholder="DOB" />-->
                         <asp:RegularExpressionValidator ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d" style="color:red;" ID="dObValidate" ControlToValidate="dOb" runat="server" ErrorMessage="DOB* Ex: MM/DD/YYYY"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="dOb" CssClass="form-control" placeholder="DOB" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <!--<input type="text" class="form-control" placeholder="City" />-->
                         <asp:RegularExpressionValidator ValidationExpression="^[a-zA-Z\s]+$" style="color:red;" ID="cItyValidate" ControlToValidate="cIty" runat="server" ErrorMessage="City*"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="cIty" CssClass="form-control" placeholder="City" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                         <asp:RegularExpressionValidator ValidationExpression="\b([A-Z]{2})\b" style="color:red;" ID="sTateValidate" ControlToValidate="sTate" runat="server" ErrorMessage="State*"></asp:RegularExpressionValidator>
                        <asp:DropDownList Style="border:2px solid black; text-align-last:center; margin-top: 5px; color:#999;" class="form-control" ID="sTate" runat="server">
                            <asp:ListItem style="display: none;" Value="" Text="State"></asp:ListItem>
                            <asp:ListItem style="color:black;" Value="AL">AL</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="AK">AK</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="AZ">AZ</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="AR">AR</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="CA">CA</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="CO">CO</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="CT">CT</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="DC">DC</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="DE">DE</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="FL">FL</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="GA">GA</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="HI">HI</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="ID">ID</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="IL">IL</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="IN">IN</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="IA">IA</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="KS">KS</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="KY">KY</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="LA">LA</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="ME">ME</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="MD">MD</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="MA">MA</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="MI">MI</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="MN">MN</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="MS">MS</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="MO">MO</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="MT">MT</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="NE">NE</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="NV">NV</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="NH">NH</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="NJ">NJ</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="NM">NM</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="NY">NY</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="NC">NC</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="ND">ND</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="OH">OH</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="OK">OK</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="OR">OR</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="PA">PA</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="RI">RI</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="SC">SC</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="SD">SD</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="TN">TN</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="TX">TX</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="UT">UT</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="VT">VT</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="VA">VA</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="WA">WA</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="WV">WV</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="WI">WI</asp:ListItem>
                            <asp:ListItem style="color:black;"  Value="WY">WY</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <!--<input type="text" class="form-control" placeholder="Phone Number" />-->
                         <asp:RegularExpressionValidator ValidationExpression="^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$" style="color:red;" ID="pHoneValidate" ControlToValidate="pHone" runat="server" ErrorMessage="Phone* Example: 123-456-7890"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="pHone" CssClass="form-control" placeholder="Phone Number" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                         <asp:RegularExpressionValidator ValidationExpression="[\s\S]+" style="color:red;" ID="oCcupationValidate" ControlToValidate="oCcupation" runat="server" ErrorMessage="Occupation*"></asp:RegularExpressionValidator>
                        <asp:DropDownList Style=" color:#999; border:2px solid black;text-align-last:center;" class="form-control" ID="oCcupation" runat="server">
                            <asp:ListItem Value="" style="display: none;" Text="Occupation"></asp:ListItem>
                            <asp:ListItem Text="Software Engineer" Value="Software_Engineer"></asp:ListItem>
                            <asp:ListItem Text="Cyber Security Specialist" Value="Cyber_Security_Specialist"></asp:ListItem>
                            <asp:ListItem Text="Network Engineer" Value="Network_Engineer"></asp:ListItem>
                            <asp:ListItem Text="Database Administrator" Value="Database_Administrator"></asp:ListItem>
                            <asp:ListItem Text="Frontend Designer" Value="Frontend_Designer"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <!--<input type="text" class="form-control" placeholder="User Name" />-->
                         <asp:RegularExpressionValidator ValidationExpression="^[a-zA-Z0-9]+$" style="color:red;" ID="uSernameValidate" ControlToValidate="uSername" runat="server" ErrorMessage="Username*"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="uSername" CssClass="form-control" placeholder="Username" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <!--<input type="password" class="form-control" placeholder="Password" />-->
                         <asp:RegularExpressionValidator ValidationExpression="^[a-zA-Z0-9]+$" style="color:red;" ID="pAsswordValidate" ControlToValidate="pAssword" runat="server" ErrorMessage="Password*"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="pAssword" TextMode="Password" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div style="color: red; margin-top: 1%;" class="form-row">
                    
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <asp:Button ID="sUbmit" CssClass="btn btn-default" style="background-color:#BF0E14; width:100%; margin-top:7px;" runat="server" href="News.aspx" Text="Create Account" OnClick="Submit_Click" />
                        
                    </div>

                </div>

                <br />
            </div>
        </div>
    </div>
</asp:Content>
