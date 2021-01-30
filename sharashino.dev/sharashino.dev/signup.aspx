<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="sharashino.dev.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="signup">
		<div class="container">
			<div class="col-md-8 mx-auto">
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
									<h4>User Sign Up</h4>
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
									<asp:TextBox CssClass="form-control" ID="NameInput" runat="server" placeholder="Name"></asp:TextBox>
								</div>
							</div>
							<div class="col-md-6">
								<label class="userlogin-text">Username</label>
								<div class="form-group">
									<asp:TextBox CssClass="form-control" ID="UsernameInput" runat="server" placeholder="Username"></asp:TextBox>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label>Email</label>
								<div class="form-group col-8 mx-auto btn-lg">
									<asp:TextBox CssClass="form-control" ID="EmailInput" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<label class="userlogin-text">Password</label>
								<div class="form-group col-6 mx-auto btn-lg">
									<asp:TextBox class="form-control" ID="PasswordInput" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
								</div>
								<div class="form-group">
									<asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="SignUpClick" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
