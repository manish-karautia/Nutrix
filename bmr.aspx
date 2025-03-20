<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="bmr.aspx.cs" Inherits="Nutrix1.bmr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="bmr.css" rel="stylesheet" />
    <script src="bmr.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      <h1>BMR Calculator</h1>
      <div class="calculator">
        <form>
          <div class="form-group">
            <label for="gender">Gender:</label>
            <select class="form-control" id="gender">
              <option value="male">Male</option>
              <option value="female">Female</option>
            </select>
          </div>

          <div class="form-group">
            <label for="age">Age:</label>
            <input class="form-control" type="number" id="age" name="age" min="1" max="120" required>
          </div>

          <div class="form-group">
            <label for="height">Height (in cm):</label>
            <input class="form-control" type="number" id="height" name="height" min="1" max="300" required>
          </div>

          <div class="form-group">
            <label for="weight">Weight (in kg):</label>
            <input class="form-control" type="number" id="weight" name="weight" min="1" max="500" required>
          </div>

          <button type="button" class="btn btn-primary" onclick="calculateBMR()">Calculate</button>
        </form>

        <div id="result"></div>
      </div>
    </div>
</asp:Content>
