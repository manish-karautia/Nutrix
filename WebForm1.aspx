<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Nutrix1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <script type="text/javascript">
      $(document).ready(function () {
      
          //$(document).ready(function () {
              //$('.table').DataTable();
         // });
      
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          //$('.table1').DataTable();
      });
    </script>
    <script src="dummy.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div id="top">
           
        <div><img src="Images/nutrix.jpg" alt=""></div> 
           
        <div id="leftDiv">
            <div>
                <p>hi, </p>
                <p id="userName">Manish</p>
            </div>
            <div>
                <a href="">
                    <img src="https://tse3.mm.bing.net/th?id=OIP.w8csn2YW8Ds6UEUuweEqCAHaHa&pid=Api&P=0&w=167&h=167">
                </a>
                <p style="background-color: red; width: 20px; height: 20px; color: white;">1</p>
                <img src="https://wbecs.com/wbecs20/wp-content/themes/wbecs20/assets/img/membersarea/user_icon1.png"
                    alt="">
                <p style="background-color: lightgray; width: 20px; height: 20px; color: darkgrey;">0</p>
            </div>
            <div>
                <a href="">
                    <p>Help</p>
                </a>
            </div>
            <div>
                <a href="">
                    <p>Setting</p>
                </a>
            </div>
            
            <div>
                <p>Follow us:</p>
                <a href="https://facebook.com/myfitnesspal"><img
                        src="https://tse1.mm.bing.net/th?id=OIP.53b08CedN8D1qIPKNpEczAHaHt&pid=Api&P=0&w=159&h=165"></a>
                <a href="https://twitter.com/myfitnesspal"><img
                        src="https://tse2.mm.bing.net/th?id=OIP.uQlQc1ej3xTRMpywzGuFvAHaHw&pid=Api&P=0&w=156&h=163"></a>
            </div>
        </div>
    </div>
    <!-----------------------top section end here------->
    <!----------------nev section start here----------->
  

     <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                
                    <div class="row">
                     <div class="col">
                        <center>
                           <h4>Add Food</h4>
                          
                        </center>
                     </div>
                  </div>
             <!--      <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="Images/writer.png"/>
                        </center>
                     </div>
                  </div>   -->
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>Full Name</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                              <asp:Button class="btn btn-primary " ID="Button2" runat="server" Text="Go" />
                            </div>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>protein</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Prot" ></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-2">
                        <label>Fat</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Fat" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Carb</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Carb" ></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-2">
                        <label>Calorie</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="Cal" ></asp:TextBox>
                        </div>
                     </div>
                  </div><br>
                   <div class="row">
                       <center>
                            <div class="col-12">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-primary" runat="server" Text="Add Food" />
                            </div>
                           </center>
                        </div>
               </div>
            </div>
         <!--   <a href="homepage.aspx"><< Back to Home</a><br><br> -->
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Food List</h4>
                          
                        </center>
                     </div>
                  </div>
                
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nutrixDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="food_name" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="food_name" HeaderText="food_name" ReadOnly="True" SortExpression="food_name" />
                                <asp:BoundField DataField="protein" HeaderText="protein" SortExpression="protein" />
                                <asp:BoundField DataField="fat" HeaderText="fat" SortExpression="fat" />
                                <asp:BoundField DataField="carb" HeaderText="carb" SortExpression="carb" />
                                <asp:BoundField DataField="calorie" HeaderText="calorie" SortExpression="calorie" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>


    <!-- body -->
    <div id="body">
        <div id="bodyleftDiv">
            <!-- Body head -->
            <div id="topleft">
                <div>Your Daily Summary</div>
                <div>
                    <p id="p">X</p>day STREAK
                </div>
            </div>
            <div id="bodyleft">
                
                <div id="claoriesDetailDiv">
                    <div style="margin-left: 20px">
                        <p>calories remaining</p>
                        <p id="caloriesRemaining">2030</p>
                        <hr>
                    </div>
                    </div>
                    
            </div> <br><br>


        
            <!-- Card -->
<div class="card">

  <!-- Card image -->
  <img class="card-img-top" src="Images/nutritionist.jpg" alt="Card image cap">

  <!-- Card content -->
  <div class="card-body">

    <!-- Title -->
       <center>
    <h4 class="card-title"><a>Certified Nutritionist</a></h4>
           </center>
    <!-- Text -->
    <p class="card-text">Consult for Free</p>
    <!-- Button -->
      <center>
    <a href="Nutritionist.aspx" class="btn btn-primary">Free Consultation</a>
          </center>

  </div>

</div>
<!-- Card -->
             body feed 
            <div id="newsFeed">News Feeds</div>
            <div id="feedBox">
                <div><textarea id="feedText" placeholder="What is in your mind ..."></textarea> </div>
                <div><button
                        style="padding: 10px;background-color: #0072bf; color: white; font-weight: bold; border: none; border-radius: 10px;">Share</button>
                </div>
            </div>
            <!-- body bottom 
            <div>
                <div id="commentDiv">
                    <p id="userName">username</p>
                    <p>burned 74 calories doing 10 minutes of Aerobics, general</p>
                    <div id="likeCommentDiv">
                        <button onclick="likeFunc(0)" id="like"><img
                                src="https://tse1.mm.bing.net/th?id=OIP.4KvxxO2KUSBQsRFx2htT-gHaHv&pid=Api&P=0&w=152&h=158"
                                alt="">like</button>
                        <button onclick="commentFunc()" > <img src="https://tse1.mm.bing.net/th?id=OIP.YuIH70NKu43T1e4vtvnr4AHaHa&pid=Api&P=0&w=161&h=161" alt="">comment</button>
                    <div style="background-color: #f6f6f6;"><input placeholder="write something..." type="text" style="width: 90% ;margin: 30px; padding: 2%;"></div>
                    </div>
                </div>
                <div id="commentDiv">
                    <p id="userName">username</p>
                    <p>burned 74 calories doing 10 minutes of Aerobics, general</p>
                    <div id="likeCommentDiv">
                        <button onclick="likeFunc(0)" id="like"><img
                                src="https://tse1.mm.bing.net/th?id=OIP.4KvxxO2KUSBQsRFx2htT-gHaHv&pid=Api&P=0&w=152&h=158"
                                alt="">like</button>
                        <button onclick="commentFunc()" > <img src="https://tse1.mm.bing.net/th?id=OIP.YuIH70NKu43T1e4vtvnr4AHaHa&pid=Api&P=0&w=161&h=161" alt="">comment</button>
                    <div style="background-color: #f6f6f6;"><input placeholder="write something..." type="text" style="width: 90% ;margin: 30px; padding: 2%;"></div>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="rightDiv">

            <h3>Recent Forum Topics</h3>
            <ul>
                <li>Any plant based success?</li>
                <li>What's Your Most Recent NSV</li>
                <li>What nobody tells you about losing weight</li>
                <li>What nobody tells you about losing weight</li>
            </ul>
            <h3>HelloHealthy</h3>
            <hr>
            <h4>Eating For Impact: How to Eat to Boost Your Mood</h4>
            <p>Mood disorders have been linked to gut health problems. Support a healthy gut and boost your mood with tips from MyFitnessPal’s registered dietitian.</p>
            <h4>Do Sleep Drinks Actually Help You Sleep Better?</h4>
            <p>You’re probably better off making your own DIY sleep drink (recipe included).</p>
            <h4>How Lack of Sleep Affects Junk Food Cravings</h4>
            <p>Sleep deprivation makes our body and brain crave higher-calorie foods.</p>
        </div>
           --> 
    </div>
</asp:Content>
