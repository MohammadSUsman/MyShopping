<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site2.Master" AutoEventWireup="true" CodeBehind="Manage_Inventory.aspx.cs" Inherits="MyShoppingProject.Admin.Manage_Inventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <h2 style="text-align:center; width:100%">Manage Inventory</h2>
    </p>
    <p>
    <div style="width:50%; height:auto; margin:15px auto; ">
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Width="100%" AllowPaging="True" 
            onpageindexchanging="GridView1_PageIndexChanging" 
            AutoGenerateColumns="False" DataKeyNames="ProductId" 
            DataSourceID="SqlDataSource1" onrowdatabound="GridView1_RowDataBound">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" 
                    InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                    SortExpression="Quantity" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" Height="30px" 
                            PostBackUrl='<%# Eval("ProductId", "Update_Inventory.aspx?ProductId={0}") %>' 
                            Text="Update inventory" Width="138px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" 
                Font-Italic="True" Height="40px" HorizontalAlign="Center" 
                VerticalAlign="Middle" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Font-Italic="True" 
                HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Quantity], [Name], [ProductId] FROM [Products]">
        </asp:SqlDataSource>
    </p>
</asp:Content>
