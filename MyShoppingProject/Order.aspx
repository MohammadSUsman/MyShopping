<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="MyShoppingProject.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


				 <!-- main --><div class="main">
			
			<div class="shell">
				<!-- cols -->
				<section class="cols">
                  <div class="col9">
                  <div style="height:400px">

                   <h1 style="margin-top:20px;margin-bottom:20px; font-size:30px" >Purchasing Details</h1> <hr style="margin-bottom:20px;width:270px;"/>

    <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
        GridLines="None" Height="45px" Width="474px" Font-Bold="False" ShowFooter="True" 
                          ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
            Height="45px" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="30px" 
            HorizontalAlign="Center" VerticalAlign="Middle" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="#CC0000" Text="TOTAL:"></asp:Label>
&nbsp;&nbsp;&nbsp;
&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
     <br />

     <h1 style="margin-top:20px;margin-bottom:20px; font-size:30px" >Payment Method</h1> <hr style="margin-bottom:20px;width:250px;"/>
    <p>Cash on Delivery</p>
    <br />
    <br />
    <br />
    <asp:Button ID="Orderbtn" runat="server" onclick="Orderbtn_Click" 
        Text="Order Now" Height="43px" Width="113px" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Height="41px" onclick="Button2_Click" 
        Text="Continue Shopping" Width="126px" />
    <br />

</div>
</div>
</div>
</div>

</asp:Content>
