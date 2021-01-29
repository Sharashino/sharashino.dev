<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="sharashino.dev.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div class="container">
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
									<h3>Administrator login</h3>
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
									<asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
								</div>
								<label class="userlogin-text">Password</label>
								<div class="form-group">
									<asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
								</div>
								<div class="form-group">
									<asp:Button class="btn btn-success col-12 btn-lg" ID="Button1" runat="server" Text="Login" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<a href="home.aspx"><< Back to Home</a><br><br/>
		</div>
	</div>
</asp:Content>
