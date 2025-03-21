﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="caloriecalc.aspx.cs" Inherits="Nutrix1.sign_in" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="caloriecalc.css" rel="stylesheet" />
    <script src="caloriecalc.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 

  <main>
    <p class="text-center font-weight-bold" style="margin-top: 25px; font-size: large;">Insert your data below to calculate your recommended calories intake!</p>
    <div class="card text-center border-warning-color-dark"
      style="max-width: 50rem; margin: auto;  width: 50%; margin-top: 30px; min-width: 20rem;">
     <span class="border border-primary"></span>
      <table class="table" style="border-spacing: 0rem;">
        <form>
          <tr>
            <td class="T">Gender</td>
            <td class="I">
              <input type="radio" name="gender" value="male" id="male" checked="checked"> Male &nbsp &nbsp
              <input type="radio" name="gender" value="female" id="female"> Female
            </td>
          </tr>
          <tr>
            <td class="T">Age</td>
            <td class="I" id="AT"><input type="number" min="0" id="age" placeholder=""
                style="border-width: 2px; border-color: rgb(255, 123, 0); border-radius: 5px;"><div style="display: none;" id="ATT">Please enter valid number</div></td>
          </tr>
          <tr>
            <td class="T">Weight</td>
            <td class="I"><input type="number" min="0" id="weight"
                style="border-width: 2px; border-color: rgb(255, 123, 0); border-radius: 5px;" placeholder="Kg"><div style="display: none;" id="WTT">Please enter valid number</div></td>
          </tr>
          <tr>
            <td class="T">Height</td>
            <td class="I"><input type="number" min="0" id="height"
                style="border-width: 2px; border-color: rgb(255, 123, 0); border-radius: 5px;" placeholder="Cm"><div style="display: none;" id="HTT">Please enter valid number</div></td>
          </tr>
        </form>

        <tr>
          <td class="T">Exercise level<p>/Activity</p></td>
          <td>
            <select class="custom-select custom-select-sm"
              style="width: 70%; margin: auto; border-width: 2px; border-color: rgb(255, 123, 0); border-radius: 5px; margin-top: 12px;"> <!--KONO DIO DA -->
              <option value="0" id="0">Basal Metabolic Rate (BMR)</option>
              <option value="1" id="1">Little/No exercise</option>
              <option value="2" id="2">Low activity (exercise 1-3 times/week)</option>
              <option value="3" id="3">Active (daily exercise or intense exercise 3-4 times/week)</option>
              <option value="4" id="4">High activity (intense exercise 6-7 times/week)</option>
              <option value="5" id="5">Very high activity (very intense exercise daily, or physical job)</option>
            </select>
          </td>
        </tr>
      </table>

      <!-- UwU -->
      <button id="B" type="button" onclick="calc()" class="btn btn-amber"
        style="width: 300px; margin: auto; margin-bottom: 25px; border-radius: 25px;">Calculate</button>
    </div>

    <!-- Score -->
    <div id="Final" class="card text-center"
      style="max-width: 25rem; margin: auto; border: 6px solid orange; width: 50%; margin-top: 45px; background-color:#fff176; border-radius: 20px; color:#ff6d00; display: none; margin-bottom: 30px">
      <table style="margin-top: 15px;">
        <tr>
          <td class="T" style="font-weight: bold;">Maintain weight <p></p>
          </td>
          <td><div id="a" class="SS">&nbsp</div><div class="CD">Calories/day</div></td>
        </tr>
        <tr>
          <td class="T" style="font-weight: bold;">Weight loss <p
              style="font-size: small; color:#888; font-weight: lighter;">0.5 kg/week</p>
          </td>
          <td><div id="b" class="SS">&nbsp</div><div class="CD">Calories/day</div></td>
        </tr>
        <tr>
          <td class="T" style="font-weight: bold;">Weight gain <p
              style="font-size: small; color:#888; font-weight: lighter;">0.5 kg/week</p>
          </td>
          <td><div id="c" class="SS">&nbsp</div><div class="CD">Calories/day</div></td>
        </tr>
      </table>
    </div> <br><br><br><br><br><br><br>

  </main>

  <!-- End your project here--> <!-- By Tomasz Pęśko -->

     <!-- jQuery -->
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>
  <!-- Your custom scripts (optional) -->
  <script type="text/javascript" src="js/calculator.js"></script>
    </asp:Content>