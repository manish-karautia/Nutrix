<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="Nutrix1.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/homepage.css" rel="stylesheet" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     
    
    

    
   <!-- <section class="h-100 h-custom" style="background-color:lightskyblue"> -->
     <!----------------nev section start here----------->
       

     <div  id="mid" >
        <div id="container">
            <h1>Fitness starts with what you eat.</h1>
            <p>Take control of your goals. Track calories, break down ingredients,
                 and log activities with MyFitnessPal.
            </p>
            <button>START FOR FREE</button>
            <div><span>Already have an account?</span>
              <a href="Userlogin.aspx">Login</a>
            </div>
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

    <center>
    <div class="card" style="width: 25rem;">
  <img class="card-img-top" src="https://www.myfitnesspal.com/_next/image?url=%2Fpages%2Fhome%2Fvictory-story-3.jpg&w=1920&q=75" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">She was egar to make change</h5>
    <p class="card-text">Nutrix give me a wake up in a way i was 
                eating and made thing clear what i have to eat</p>
    <a href="#" class="btn btn-primary">Go </a>
  </div>
</div>

</center>



    <!--
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
      
    -->   

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

    <!--
        <nav class="navbar navbar-expand-lg"  style="background-color: #4169E1;">
            

          
            <div class="container-fluid">
                
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                

                
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mr-auto">
              

                       <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Food</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Exercise</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Reports</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Premium</a>
                        </li>
                         
                    </ul>
                </div>
                    
            </div>
        </nav>

        




        <nav class="navbar navbar-expand-lg"  style="background-color: #0000CD;">
            

          
            <div class="container-fluid">
                
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav1">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Goals</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Mail</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Friends</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Settings</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        -->    
       
 </asp:Content>
