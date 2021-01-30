<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="admingamesmanager.aspx.cs" Inherits="sharashino.dev.admingamesmanager" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="admingamesmanager">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="card">
						<div class="card-body">
							<div class="row">
								<div class="col">
									<center>
										<h4>Games Manager</h4>
									</center>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<center>
										<img width="128px" height="128px" src="Images/GameWalls/QuestionBox.png" />
									</center>
								</div>
							</div>
							<div class="row">
								<div class="col">
									<hr/>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<label class="userlogin-text">Game ID</label>
									<div class="input-group">
										<asp:TextBox CssClass="form-control" ID="GameIDBox" runat="server" placeholder="Game ID"></asp:TextBox>
									</div>
								</div>
								<div class="col-md-8">
									<label class="userlogin-text">Game Title</label>
									<div class="form-group">
										<asp:TextBox CssClass="form-control" ID="GameTitleBox" runat="server" placeholder="Game Title"></asp:TextBox>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4">
										<asp:Button class="btn btn-lg btn-block btn-success" ID="AddButton" runat="server" Text="Add" OnClick="AddButtonPress"/>
									</div>
									<div class="col-md-4">
										<asp:Button class="btn btn-lg btn-block btn-warning" ID="UpdateButton" runat="server" Text="Update" OnClick="UpdateButtonPress"/>
									</div>
									<div class="col-md-4">
										<asp:Button class="btn btn-lg btn-block btn-danger" ID="DeleteButton" runat="server" Text="Delete" OnClick="DeleteButtonPress"/>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-6">
					<div class="card">
						<div class="row">
							<div class="col">
								<center>
									<h2>Games</h2>
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
								<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sharashinoDBConnectionString %>" SelectCommand="SELECT * FROM [GamesMaster]"></asp:SqlDataSource>
								<asp:GridView class="table table-striped table-bordered" ID="GamesView" runat="server" AutoGenerateColumns="False" DataKeyNames="game_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GamesView_SelectedIndexChanged">
									<Columns>
										<asp:BoundField DataField="game_id" HeaderText="Game ID" ReadOnly="True" SortExpression="game_id" />
										<asp:BoundField DataField="game_name" HeaderText="Game Name" SortExpression="game_name" />
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
