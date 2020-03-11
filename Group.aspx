<%@ Page Title="profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="ConnectNow.Profile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="jumbotron profile" style="margin-top:100px">
   
                <div class="container">
                    <div class="row profile">
		                <div class="col-md-3">
			                <div class="profile-sidebar">
				                <div class="profile-userpic">					                
                                    <img src="images/profile_blank.fw.png" class="img-responsive" alt="" />
				                </div>			
				                <div class="profile-usertitle">
                                    <div class="group-usertitle-groups mx-auto">
						                Groups
					                </div>
				                </div>				                
			                </div>
		                </div>
		                <div class="col-md-9">
                            <div class="row profile-content">			                   
                                <div class="col-md-6 col-md-push-3 profile-usertitle-name">
						            Group Name
					            </div>                 
                            </div>
                             <br />                    
                            <div class="profile-usertitle-activity">
						        Recent Group Activity
					        </div>                                    
		                </div>
	                </div>
                </div>                

            </div>
        </div>
    </div>
</asp:Content>