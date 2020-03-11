<%@ Page Title="profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="ConnectNow.Profile" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="row">
		<div class="col-md-12">
			<div class="jumbotron profile" style="margin-top: 100px">

				<div class="container">
					<div class="row profile">
						<div class="col-md-3">
							<div class="profile-sidebar">
								<div class="profile-userpic">
									<img src="images/default.png" class="img-responsive" alt="" />
								</div>
								<div class="profile-usertitle">
									<div class="profile-usertitle-name">
										<%= UserProfile.Username %>
									</div>
									<br />
									<div class="profile-usertitle-name">
										<%= UserProfile.DOB %>
									</div>
									<br />
									<div class="profile-usertitle-name">
										<%= UserProfile.Job %>
									</div>
									<br />
									<div class="profile-usertitle-name">
										<%= UserProfile.City %>, <%= UserProfile.State %>
									</div>
									<br />
									<div class="profile-usertitle-groups mx-auto">
										Group
									
										<div>
											<% foreach (var group in UserGroups)
												{ %>

											<% if (group.GroupID == 2)
												{ %>
											<div><a href="Cyber.aspx"><%= group.Name %></a></div>
											<% }
												else if (group.GroupID == 5)
												{ %>
											<div><a href="Frontend.aspx"><%= group.Name %></a></div>
											<% }
												else if (group.GroupID == 3)
												{ %>
											<div><a href="Network.aspx"><%= group.Name %></a></div>
											<% }
												else if (group.GroupID == 1)
												{ %>
											<div><a href="Software.aspx"><%= group.Name %></a></div>
											<% }
												else if (group.GroupID == 4)
												{ %>
											<div><a href="Database.aspx"><%= group.Name %></a></div>
											<% } %>
											<% } %>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-9">
							<div class="row profile-content">
								<div class="col-md-6 col-md-push-3 profile-usertitle-name">
									<%= UserProfile.Name %>
								</div>
							</div>
							<br />
							
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</asp:Content>
