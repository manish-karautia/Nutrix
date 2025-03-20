<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Paymentaspx.aspx.cs" Inherits="Nutrix1.Paymentaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Payment.css" rel="stylesheet" />
    <script src="payment.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id = "paymentHeader">
             <div>
                    <img src="https://account.myfitnesspal.com/img/logo_myfitnesspal.svg" alt=""/>
             </div>

             <div>
                   <img src="https://d34yn14tavczy0.cloudfront.net/images/no_photo.png" alt=""/>
             </div>
    </div>

    <div id = "inputOrderContainer">
           <div id = "inputContainer">
                   <div>Input your payment information</div>
                   <input type="text" id = "cardName" placeholder = "Cardholder's Name" />
                   <input type="text" id = "cardNumber" placeholder = "Card Number"/>
                    <div>
                   <input type="text" id = "mmyy" placeholder = "MM/YY"/>
                   <input type="text" id = "cvv" placeholder = "CVV" TextMode="Password"/> 
                   <input type="text" id = "zipCode" placeholder = "Zip Code"/>
                   </div>
                   <div id = "invalidPayment">Invalid Credentials. Please try again</div>
                   <div id = "placeOrder">PLACE ORDER</div>

           </div><br>
           <div id = "orderContainer">
                  <div>Order Summary</div>
                  <div>
                          <div>MyFitnessPal Premium (Annual)</div>
                          <div>₹3,100.00</div>
                  </div>

                  <div>Your subscription will renew at  per year . You may cancel anytime.</div>
           </div>
    </div><br>

</asp:Content>
