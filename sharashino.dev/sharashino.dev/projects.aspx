<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="projects.aspx.cs" Inherits="sharashino.dev.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="projects">
		<div class="projects-links">
			<div class="row">
				<div class="col-md-4">
					<center>
						<h4>Seedling</h4>
						<img width="512" height="512" src="Images/GameWalls/seedling.png" />
						<div class="row">
							<div class="col">
								<asp:Button class="btn btn-success btn-lg btn-block projects-button" ID="DownloadSeedling" runat="server" Text="Download" OnClick="DownloadSeedling_Click" />
							</div>
						</div>
					</center>
				</div>
				<div class="col-md-4">	
					<center>
						<h4>GAME - JBZDY</h4>
						<img width="512" height="512" src="Images/GameWalls/jbzdygame.png" />
						<div class="row">
							<div class="col">
								<asp:Button class="btn btn-success btn-lg btn-block projects-button" ID="DownloadJBZDY" runat="server" Text="Download" OnClick="DownloadJBZDY_Click"/>
							</div>
						</div>
					</center>
				</div>
				<div class="col-md-4">
					<center>
						<h4>???</h4>
						<img width="512" height="512" src="Images/GameWalls/QuestionBox.png" />
						<div class="row">
							<div class="col">
								<asp:Button class="btn btn-success btn-lg btn-block projects-button" ID="DownloadNone" runat="server" Text="Download" Visible="False" />
							</div>
						</div>
					</center>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
