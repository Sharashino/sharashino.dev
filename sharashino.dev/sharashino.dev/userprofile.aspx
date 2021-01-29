<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="sharashino.dev.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="userprofile">
		<div class="container-fluid">
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
										<asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your status"></asp:Label>
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
										<asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name" ReadOnly="True"></asp:TextBox>
									</div>
								</div>
								<div class="col-md-6">
									<label class="userlogin-text">Username</label>
									<div class="form-group">
										<asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Username" ReadOnly="True"></asp:TextBox>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<label>Email</label>
									<div class="form-group col-8 mx-auto btn-lg">
										<asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Email" TextMode="Email" ReadOnly="True"></asp:TextBox>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<label class="userlogin-text">Password</label>
									<div class="form-group">
										<asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
									</div>
								</div>
								<div class="col">
									<label class="userlogin-text">New Password</label>
									<div class="form-group">
										<asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
									</div>
								</div>
								<div class="row">
									<div class="col-8 mx-auto">
										<center>
											<div class="form-group">
												<a href="signup.aspx"><input class="btn btn-primary btn-block btn-lg" id="Button2" type="button" value="Update info" /></a>
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
								<asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
