<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ConnectNow._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-16">
            <div class="jumbotron cp" style="margin-top:75px">
                
                <div class="createPost">
                    <div class="header">
                        Create Post
                    </div>
                    <div class="body">
<textarea>

  </textarea>

                    </div>
                </div>

                <div class="titlebar">
                    <img src="images/news_title_white.fw.png" />
                    <span>
                        Software Engineers
                    </span>
                </div>

                <div class="userPost">
                    <div class="header">
                        <img src="images/news_title_person.fw.png" />
                        <span class="postedBy">Posted by: </span>
                        <span class="author">John Doe</span>
                        <span class="date">Today 12:06 PM</span>
                    </div>
                    <div class="body">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                    </div>
                </div>

            </div>
        </div>

    </div>

</asp:Content>
