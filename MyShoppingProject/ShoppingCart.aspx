<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="MyShoppingProject.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



          <div class="col9">

         


         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
          onrowdeleting="GridView1_RowDeleting" onrowcommand="GridView1_RowCommand"
          ShowFooter="True" onselectedindexchanged="GridView1_SelectedIndexChanged" 
           DataKeyNames="ProductId" 
           onselectedindexchanging="GridView1_SelectedIndexChanging" Width="657px" 
                  GridLines="None" CellPadding="4" ForeColor="#333333">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>


          <asp:TemplateField>
           <ItemTemplate>

        <asp:Image ID="Image1" runat="server" Height="51px" 
        ImageUrl='<%# Eval("Image") %>' Width="53px" />
        <br />

         </ItemTemplate>
     </asp:TemplateField>


          <asp:TemplateField HeaderText="Name">
         <ItemTemplate>
               <span><%# Eval("Name") %>
    
           </span> <br />

           </ItemTemplate>
              </asp:TemplateField>



            <asp:TemplateField HeaderText="Item Price">
           <ItemTemplate>
                  <%# Eval("Price") %>
          </ItemTemplate>
            </asp:TemplateField>



            <asp:TemplateField HeaderText="Quantity">
                    <ItemTemplate>
              <asp:TextBox ID="txt_qty" runat="server"></asp:TextBox>
              </ItemTemplate>

             <FooterTemplate>
             Total:(RS)
            </FooterTemplate>
            </asp:TemplateField>

          <asp:TemplateField HeaderText="SubTotal" >
           <FooterTemplate>
               <asp:Label ID="lbl_total" runat="server" Font-Bold="True"></asp:Label>
           </FooterTemplate>
               <ItemTemplate>
                    <%# Eval("Total") %>
                       </ItemTemplate>
               </asp:TemplateField>

             <asp:TemplateField>
            <FooterTemplate>
                
                <asp:Button ID="Button1" runat="server" CommandName="abc" Text="Update Cart" Width="100px"  Height="40px" />
             </FooterTemplate>

          <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="delete" style="text-align:right"
                ImageUrl="~/Images/bg/delete.png"  Height="36px" Width="36px"/>
              </ItemTemplate>
            </asp:TemplateField>
       </Columns>
             <EditRowStyle BackColor="#999999" />
             <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="Black" 
                 HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
          <HeaderStyle HorizontalAlign="Left" BackColor="#5D7B9D" Font-Bold="True" 
                 ForeColor="White" Height="50px" />

               <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="30px" />
             <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#E9E7E2" />
             <SortedAscendingHeaderStyle BackColor="#506C8C" />
             <SortedDescendingCellStyle BackColor="#FFFDF8" />
             <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

               </asp:GridView>
          <asp:Label ID="lbl_total" runat="server" ForeColor="#CC0000"></asp:Label>
          <br />
              <asp:Button ID="Button2" runat="server" PostBackUrl="~/FrontPage.aspx" Text="Continue Shopping" Width="150px" Height="40px" />


              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Text="Proceed To Checkout" 
                  Height="40px" Width="150px" onclick="Button3_Click" />


					<br />
              &nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <br />


					</div>


</asp:Content>
