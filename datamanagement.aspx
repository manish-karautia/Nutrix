<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="datamanagement.aspx.cs" Inherits="Nutrix1.datamanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
      $(document).ready(function () {
      
          //$(document).ready(function () {
              //$('.table').DataTable();
         // });
      
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          //$('.table1').DataTable();
      });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                
                    <div class="row">
                     <div class="col">
                        <center>
                           <h4>Data Management</h4>
                          
                        </center>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="Images/writer.png"/>
                        </center>
                     </div>
                  </div>
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
                              <asp:Button class="btn btn-primary " ID="Button2" runat="server" Text="Go"  OnClick="Button2_Click"/>
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
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Fat"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-2">
                        <label>Carb</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Carb"></asp:TextBox>
                        </div>
                     </div>
                      <div class="col-md-2">
                        <label>Calorie</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="Cal"></asp:TextBox>
                        </div>
                     </div>
                  </div><br>
                   <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server"  Text="Add" OnClick="Button1_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server"  Text="Update" OnClick="Button3_Click"/>
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server"  Text="Delete" OnClick="Button4_Click"/>
                            </div>
                        </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Data List</h4>
                          
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
</asp:Content>