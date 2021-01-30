<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="sharashino.dev.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="container">
		<div class="userlogin">
			<div class="row">
				<div class="col-md-6 mx-auto">
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
										<h3>Member login</h3>
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
									<label class="userlogin-text">Username</label>
									<div class="form-group">
										<asp:TextBox CssClass="form-control" ID="UsernameInput" runat="server" placeholder="Username"></asp:TextBox>
									</div>
									<label class="userlogin-text">Password</label>
									<div class="form-group">
										<asp:TextBox CssClass="form-control" ID="PasswordInput" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
									</div>
									<div class="form-group">
										<asp:Button class="btn btn-control col-12 btn-lg" ID="Button1" runat="server" Text="Login" OnClick="LogInClick"/>
									</div>
									<div class="form-group">
										<asp:Button class="btn btn-success col-12 btn-lg" ID="Button3" runat="server" Text="Sign Up" OnClick="SignUpClick"/>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<a href="home.aspx"><< Back to Home</a><br><br/>
			</div>
		</div>
	</div>
</asp:Content>
