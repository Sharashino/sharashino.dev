<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="sharashino.dev.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container-fluid">
		<div class="userprofile">
			<div class="row">
				<div class="col-md-5">
					<div class="card">
						<div class="card-body">
							<div class="row">
								<div class="col">
									<center>
										<img width="128px" height="128px" src="Images/GameWalls/QuestionBox.png" />
									</center>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<center>
										<h4>Your Profile</h4>
										<span>Account status - </span>
										<asp:Label class="badge badge-pill badge-info" ID="AccountStatusLabel" runat="server" Text="Your status"></asp:Label>
									</center>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<hr/>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label class="userlogin-text">Name</label>
									<div class="form-group">
										<asp:TextBox CssClass="form-control" ID="NameBox" runat="server" placeholder="Name" ReadOnly="True"></asp:TextBox>
									</div>
								</div>
								<div class="col-md-6">
									<label class="userlogin-text">Username</label>
									<div class="form-group">
										<asp:TextBox CssClass="form-control" ID="UsernameBox" runat="server" placeholder="Username" ReadOnly="True"></asp:TextBox>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<label>Email</label>
									<div class="form-group col-8 mx-auto btn-lg">
										<asp:TextBox CssClass="form-control" ID="EmailBox" runat="server" placeholder="Email" TextMode="Email" ReadOnly="True"></asp:TextBox>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<label class="userlogin-text">Password</label>
									<div class="form-group">
										<asp:TextBox class="form-control" ID="PasswordBox" runat="server" placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
									</div>
								</div>
								<div class="col">
									<label class="userlogin-text">New Password</label>
									<div class="form-group">
										<asp:TextBox class="form-control" ID="NewPasswordBox" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
									</div>
								</div>
								<div class="row">
									<div class="col-8 mx-auto">
										<center>
											<div class="form-group">
												<asp:Button class="btn btn-success col-12 btn-lg" ID="UpdatePasswordButton" runat="server" Text="Update info" OnClick="UpdatePassword"/>
											</div>
										</center>
									</div>
								</div>
							</div>
						</div>
					</div>
			</div>
				<div class="col-7">
					<div class="card">
						<div class="row">
							<div class="col">
								<center>
									<h2>Downloaded games</h2>
								</center>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<hr/>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sharashinoDBConnectionString2 %>" SelectCommand="SELECT [game_title], [dwn_date] FROM [UserDownload]"></asp:SqlDataSource>
								<asp:GridView class="table table-striped table-bordered" ID="DownloadedGamesView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DownloadedGamesView_SelectedIndexChanged">
									<Columns>
										<asp:BoundField DataField="game_title" HeaderText="Game Title" SortExpression="game_title" />
										<asp:BoundField DataField="dwn_date" HeaderText="Download Date" SortExpression="dwn_date" />
									</Columns>
								</asp:GridView>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
