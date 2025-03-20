<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Community.aspx.cs" Inherits="Nutrix1.Community" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Community.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="top">
        <div class="left">
          <h1><a href="./leandingpage.html">myfitnesspal</a></h1>
        </div>
        <div class="right">
          <p><a href="./login.html">Log In</a></p>
          <p><a href="./signup.html">Sign Up</a></p>
        </div>
    </div>
    <!-----------------------top section end here------->
    <!----------------nev section start here----------->
    <div id="nev">
        <a href="">ABOUT</a>
        <a href="./login.html">FOOD</a>
        <a href="./login.html">EXERCISE</a>
        <a href="appgallery.html">APPS</a>
        <a href="community.html">COMMUNITY</a>
        <a href="./blog.html">BLOG</a>
        <a href="premium.html">PREMIUM</a>
    </div>
    <div  id="mid" >
        <div id="container">
            <h1>Fitness starts with what you eat.</h1>
            <p>Take control of your goals. Track calories, break down ingredients,
                 and log activities with MyFitnessPal.
            </p>
            <button>START FOR FREE</button>
            <div><span>Already have an account?</span>
              <a href="">Login</a>
            </div>
        </div>
    </div>
    <!--------------later added thing is shown here---------------->
    <div id="product">
        <div id="search">
            <h1>Search over 11 million foods in our database</h1>
            <p>What's in your food? Learn about calorie count, nutrition information and serving size.</p>
        </div>
        <div id="input">
            <input type="text" placeholder="Get The Nutrition Value Of Any Food , Like Apple">
            <img src="https://www.myfitnesspal.com/react-static/b96cec4f94f4413f2891c9bde43f3bcc.png" alt="">
        </div>
    </div>
    <!--------------tool section one section is left above-->
    <div id="toolSection">
        <h1>The Tools for Your Goals</h1> 
        <p>Trying to lose weight, tone up, lower your BMI, or invest in your overall health? We give you the right features to hit your goals.</p>
    </div>
    <div id="track">
        <div>
            <img src="https://www.myfitnesspal.com/_next/static/media/diary.e6e4c438.svg" alt="">
            <h1>Learn. Track. Improve.</h1>
            <p>Keeping a food diary helps you understand your habits and increases your likelihood of hitting your goals.</p>
        </div>
        <div>
            <img src="https://www.myfitnesspal.com/_next/static/media/barcode.18277ae4.svg" alt="">
            <h1>Logging Simplified</h1>
            <p>Scan barcodes, save meals and recipes, and use Quick Tools for fast and easy food tracking.</p>
        </div>
        <div>
            <img src="https://www.myfitnesspal.com/_next/static/media/shoeblue.28e2684f.svg" alt="">
            <h1>Stay Motivated</h1>
            <p>Join the World’s Largest Fitness Community for advice, tips, and support 24/7.</p>
        </div>
    </div>
    <!----------button section -->
    <div id="btn">
        <button>START YOUR JOURNEY TODAY</button>
    </div>
    <!--------------victory section----------->
    <div id="victory">
        <h1>Victory Stories</h1> 
        <p>When you reach your goals, our whole community celebrates with you. That’s over 200 million members sharing in your victory—using it to inspire their own journey.</p>
    </div>
    <div id="slide">
        <img src="https://www.myfitnesspal.com/_next/image?url=%2Fpages%2Fhome%2Fvictory-story-3.jpg&w=1920&q=75" alt="">
        <div>
            <h1>She was egar to make change</h1>
            <p>Myfitness pal give me a wake up in a way i was 
                eating and made thing clear what i have to eat
            </p>
            <p>-Lori</p>
        </div>
    </div>
    <!---------add the left victory section here------>
    <!---------------recipe section started-------->
    <div id="recipe">
        <h1>Recipes & Inspiration</h1> 
        <p>Get nutritionist-approved recipes and motivational workout tips from MyFitnessPal experts.</p>
    </div>
    <div id="recipeGrid">
        <div>
            <img src="https://www.myfitnesspal.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Fbreakfast-300-calories.d991cc82.png&w=1920&q=75" alt="">
            <h3><a href="">15 Make Ahead Breakfasts Under300 calories</a></h3>
            <p><a href="">My Fitness Pal Blog</a></p>
        </div>
        <div>
            <img src="https://www.myfitnesspal.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Fcalories-look-like.6cb556bf.png&w=1920&q=75" alt="">
            <h3><a href="">What the 1200 calorie diet looks like</a></h3>
            <p><a href="">My Fitness Pal Blog</a></p>
        </div>
        <div>
            <img src="https://www.myfitnesspal.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Fgetting-moving.e3e4042a.png&w=1920&q=75" alt="">
            <h3><a href="">Essential guide to getting moving</a></h3>
            <p><a href="">My Fitness Pal Blog</a></p>
        </div>
    </div>
    <div id="last">
        <h1>Connect with over 50 <br> apps.</h1>
        <p>Easily link your MyFitnessPal account with apps that  support your  ch and<br> healthier lifestyle. It’s not just about calories. It’s about feeling better,<br> looking better, and living better.</p>
        <img src="https://www.myfitnesspal.com/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Fimg-apps%402x.85e549ef.png&w=1920&q=75" alt="">
    </div>
    <div id="playstore">
        <a href="https://apps.apple.com/us/app/myfitnesspal/id341232718"> <img src="https://www.myfitnesspal.com/_next/static/media/conversion-apple-app-store-logo.751bc42c.svg" alt=""></a>
        <a href="https://play.google.com/store/apps/details?id=com.myfitnesspal.android"><img src="https://www.myfitnesspal.com/_next/static/media/conversion-google-play-store-logo.1c6369a1.svg" alt=""></a>
    </div>
    <div id="bottom">
        <div>
        <a href="">Calorie Counter</a>
        <a href="">Blog</a>
        <a href="">Terms</a>
        <a href="">Privacy</a>
        <a href="">Contact Us</a>
        <a href="">API</a>
        <a href="">Jobs</a>
        <a href="">Feedback</a>
        <a href="">Community Guidlines</a>
        <a href="">Ad choics</a>
        <a href=""> Do Not Sell My Personal Information</a>
        </div>
        <p>&#169 2022 MyFitnessPal, Inc.</p>
    </div>
</asp:Content>
