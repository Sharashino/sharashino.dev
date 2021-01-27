<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="aboutme.aspx.cs" Inherits="sharashino.dev.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<section>
		<div class="aboutme">
			<div class="container">
				<div class="aboutme-text">Hi!</div>
				<div class="row">
					<div class="col-md-6">
						<center>
							<img width="591" height="422" src="Images/me.jpg" />
						</center>
					</div>
					<div class="col-md-6">
						<center>
							<h4>Shortly</h4>
							<p class="aboutme-desc">
								My name is Gerard Adamkiewicz, 20 years old self-taught Unity3D developer, pixel-art lover. 
								Passionate about C# and C++ game development. In 2020 I graduated from the IT Technical School, 
								currently studying Computer Science at Collegium Da Vinci. 
								I am eager to learn new things, self-develop and achieve set goals by developing games.
							</p>
						</center>
					</div>
				</div>
			</div>
			<div class="container">
			<div class="aboutme-links">
					<div class="row">
						<div class="col-md-3">
							<center>
								<h4>Instagram</h4>
								<a href="https://www.instagram.com/sharashino.dev/"><img width="256" height="256" src="Images/Icons/instagram.png" /></a>
							</center>
						</div>
						<div class="col-md-3">
							<center>
								<h4>Facebook</h4>
								<a href="https://www.facebook.com/sharashino.dev"><img width="256" height="256" src="Images/Icons/facebook.png" /></a>
							</center>
						</div>
						<div class="col-md-3">
							<center>
								<h4>GitHub</h4>
								<a href="https://github.com/Sharashino"><img width="256" height="256" src="Images/Icons/github.png" /></a>
							</center>
						</div>
						<div class="col-md-3">
							<center>
								<h4>LinkedIn</h4>
								<a href="https://www.linkedin.com/in/gadamkiewicz"><img width="256" height="256" src="Images/Icons/linkedin.png" /></a>
							</center>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</asp:Content>
