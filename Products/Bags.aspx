<%@ Page Title="" Language="VB" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="false" CodeFile="Bags.aspx.vb" Inherits="Products_Bags" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h2>
        Bags</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Item_Number" 
            DataSourceID="AccessDataSource1" 
            EmptyDataText="There are no data records to display." CellPadding="4" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Item_Number" HeaderText="Item_Number" 
                    ReadOnly="True" SortExpression="Item_Number" />
                <asp:BoundField DataField="Item_Name" HeaderText="Item_Name" 
                    SortExpression="Item_Name" />
                <asp:BoundField DataField="Category" HeaderText="Category" 
                    SortExpression="Category" />
                <asp:BoundField DataField="Retail_Price" HeaderText="Retail_Price" 
                    SortExpression="Retail_Price" />
                <asp:BoundField DataField="Wholesale_Price" HeaderText="Wholesale_Price" 
                    SortExpression="Wholesale_Price" />
                <asp:ImageField DataImageUrlField="Image_File_Name" 
                    DataImageUrlFormatString="~/Images/Bags/{0}" HeaderText="Image">
                </asp:ImageField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/QMPongo.accdb" 
            SelectCommand="SELECT * FROM [QMPongo] WHERE ([Category] = ?)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Bags" Name="Category" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </p>
</asp:Content>

