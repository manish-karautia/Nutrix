<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Exercise.aspx.cs" Inherits="Nutrix1.Exercise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="exercise.css" rel="stylesheet" />
    <script src="exercise.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<br>
    <div class="container">
		<h1>Calorie burn Calculator </h1>
		<form>
			<label for="activity">Select Activity:</label>
			<select id="activity" name="activity">
				<option value="cycling">Cycling</option>
				<option value="running">Running</option>
				<option value="weight-lifting">Weight Lifting</option>
				<option value="yoga">Yoga</option>
			</select>
			<label for="time">Time Spent (in minutes):</label>
			<input type="number" id="time" name="time">
			<button type="button" onclick="calculateCalories()">Calculate</button>
		</form>
		<div id="result"></div>
	</div><br><br><br><br><br><br><br><br><br><br><br><br>
</asp:Content>

