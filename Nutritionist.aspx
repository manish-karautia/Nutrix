<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Nutritionist.aspx.cs" Inherits="Nutrix1.Nutritionist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Nutritionist.css" rel="stylesheet" />
    <script src="Nutritionist.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
		<h1>Book an Appointment with a Dietitian</h1>
		<form id="booking-form">
			<label for="name">Name:</label>
			<input type="text" id="name" name="name" required>

			<label for="email">Email:</label>
			<input type="email" id="email" name="email" required>

			<label for="phone">Phone Number:</label>
			<input type="tel" id="phone" name="phone" required>

			<label for="date-time">Preferred Appointment Date and Time:</label>
			<input type="datetime-local" id="date-time" name="date-time" required>

			<label for="comments">Comments or Questions:</label>
			<textarea id="comments" name="comments"></textarea>

			<input type="submit" value="Submit">
		</form>
	</div>
</asp:Content>
