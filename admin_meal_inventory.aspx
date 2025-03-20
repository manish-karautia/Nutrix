<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin_meal_inventory.aspx.cs" Inherits="Nutrix1.admin_meal_inventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div class="container-fluid">
        
      <div class="row">
         <div class="col-md-5">
            <div class="card">
              <div class="row">
                     <div class="col">
                        <center>
                           <h4>Meal Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="150px" src="Images/meal.jpg" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>Meal ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Meal ID" ></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                    <div class="col-md-4">
                        <label>Author Name</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                              <asp:ListItem Text="A1" Value="a1" />
                              <asp:ListItem Text="a2" Value="a2" />
                           </asp:DropDownList>
                        </div>
                  </div>
                  <div class="row">
                     
                       
                         <div class="col-md-6">
                        <label>Calories</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Calories"></asp:TextBox>
                        </div>
                     </div>
                         <div class="col-md-6">
                        <label>Meal Type</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="Breakfast" Value="Breakfast" />
                              <asp:ListItem Text="Lunch" Value="Lunch" />
                              <asp:ListItem Text="Snacks" Value="Snacks" />
                              <asp:ListItem Text="Dinner" Value="Dinner" />
                              
                              
                           </asp:ListBox>
                        </div>
                     </div>
                     </div><br>







                    <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
                     </div>
                  </div><br>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
             
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Meal List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nutrixDBConnectionString %>" SelectCommand="SELECT * FROM [meal_master_tbl]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="meal_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="meal_id" HeaderText="meal_id" ReadOnly="True" SortExpression="meal_id" />
                                <asp:BoundField DataField="meal_name" HeaderText="meal_name" SortExpression="meal_name" />
                                <asp:BoundField DataField="meal_type" HeaderText="meal_type" SortExpression="meal_type" />
                                <asp:BoundField DataField="calories" HeaderText="calories" SortExpression="calories" />
                                <asp:BoundField DataField="meal_img_link" HeaderText="meal_img_link" SortExpression="meal_img_link" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>

         </div>
      </div>
   </div>
   </div>       
</asp:Content>
