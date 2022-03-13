<%@ Page Title="" Language="VB" MasterPageFile="~/Master_Pages/MasterPage.master" AutoEventWireup="false" CodeFile="Shoes.aspx.vb" Inherits="Master_Pages_Clothes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h2>
        Shoes</h2>
    <p>
        <asp:LoginView ID="LoginView3" runat="server">
            <AnonymousTemplate>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Item_Number" 
                    DataSourceID="AccessDataSource1" 
                    EmptyDataText="There are no data records to display.">
                    <Columns>
                        <asp:BoundField DataField="Item_Number" HeaderText="Item_Number" 
                            ReadOnly="True" SortExpression="Item_Number" />
                        <asp:BoundField DataField="Item_Name" HeaderText="Item_Name" 
                            SortExpression="Item_Name" />
                        <asp:BoundField DataField="Retail_Price" HeaderText="Retail_Price" 
                            SortExpression="Retail_Price" />
                        <asp:ImageField DataImageUrlField="Image_File_Name" 
                            DataImageUrlFormatString="~/Images/Shoes/{0}" HeaderText="Image">
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/QMPongo.accdb" 
                    SelectCommand="SELECT [Item_Number], [Item_Name], [Retail_Price], [Image_File_Name] FROM [QMPongo] WHERE ([Category] = ?)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Shoes" Name="Category" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
            </AnonymousTemplate>
            <RoleGroups>
                <asp:RoleGroup Roles="VIP">
                    <ContentTemplate>
                        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
                            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Item_Number" 
                            DataSourceID="AccessDataSource1" 
                            EmptyDataText="There are no data records to display.">
                            <Columns>
                                <asp:BoundField DataField="Item_Number" HeaderText="Item_Number" 
                                    ReadOnly="True" SortExpression="Item_Number" />
                                <asp:BoundField DataField="Item_Name" HeaderText="Item_Name" 
                                    SortExpression="Item_Name" />
                                <asp:BoundField DataField="Retail_Price" HeaderText="Retail_Price" 
                                    SortExpression="Retail_Price" />
                                <asp:BoundField DataField="Discount_Price" HeaderText="Discount_Price" 
                                    ReadOnly="True" SortExpression="Discount_Price" />
                                <asp:ImageField DataImageUrlField="Image_File_Name" 
                                    DataImageUrlFormatString="~/Images/Shoes/{0}" HeaderText="Image">
                                </asp:ImageField>
                            </Columns>
                        </asp:GridView>
                        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                            DataFile="~/App_Data/QMPongo.accdb" 
                            DeleteCommand="DELETE FROM `QMPongo` WHERE `Item_Number` = ?" 
                            InsertCommand="INSERT INTO `QMPongo` (`Item_Number`, `Item_Name`, `Category`, `Retail_Price`, `Wholesale_Price`, `Image_File_Name`) VALUES (?, ?, ?, ?, ?, ?)" 
                            SelectCommand="SELECT Item_Number, Item_Name, Retail_Price, Retail_Price * 0.8 AS Discount_Price, Image_File_Name FROM QMPongo WHERE Category = ?" 
                            UpdateCommand="UPDATE `QMPongo` SET `Item_Name` = ?, `Category` = ?, `Retail_Price` = ?, `Wholesale_Price` = ?, `Image_File_Name` = ? WHERE `Item_Number` = ?">
                            <DeleteParameters>
                                <asp:Parameter Name="Item_Number" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Item_Number" Type="String" />
                                <asp:Parameter Name="Item_Name" Type="String" />
                                <asp:Parameter Name="Category" Type="String" />
                                <asp:Parameter Name="Retail_Price" Type="Decimal" />
                                <asp:Parameter Name="Wholesale_Price" Type="Decimal" />
                                <asp:Parameter Name="Image_File_Name" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Shoes" Name="?" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Item_Name" Type="String" />
                                <asp:Parameter Name="Category" Type="String" />
                                <asp:Parameter Name="Retail_Price" Type="Decimal" />
                                <asp:Parameter Name="Wholesale_Price" Type="Decimal" />
                                <asp:Parameter Name="Image_File_Name" Type="String" />
                                <asp:Parameter Name="Item_Number" Type="String" />
                            </UpdateParameters>
                        </asp:AccessDataSource>
                    </ContentTemplate>
                </asp:RoleGroup>
                <asp:RoleGroup Roles="Wholesaler">
                    <ContentTemplate>
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                            DataKeyNames="Item_Number" DataSourceID="AccessDataSource1" 
                            EmptyDataText="There are no data records to display.">
                            <Columns>
                                <asp:BoundField DataField="Item_Number" HeaderText="Item_Number" 
                                    ReadOnly="True" SortExpression="Item_Number" />
                                <asp:BoundField DataField="Item_Name" HeaderText="Item_Name" 
                                    SortExpression="Item_Name" />
                                <asp:BoundField DataField="Retail_Price" HeaderText="Retail_Price" 
                                    SortExpression="Retail_Price" />
                                <asp:BoundField DataField="Wholesale_Price" HeaderText="Wholesale_Price" 
                                    SortExpression="Wholesale_Price" />
                                <asp:ImageField DataImageUrlField="Image_File_Name" 
                                    DataImageUrlFormatString="~/Images/Shoes/{0}" HeaderText="Image">
                                </asp:ImageField>
                            </Columns>
                        </asp:GridView>
                        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                            DataFile="~/App_Data/QMPongo.accdb" 
                            SelectCommand="SELECT [Item_Number], [Item_Name], [Retail_Price], [Wholesale_Price], [Image_File_Name] FROM [QMPongo] WHERE ([Category] = ?)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Shoes" Name="Category" Type="String" />
                            </SelectParameters>
                        </asp:AccessDataSource>
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        </asp:LoginView>
    </p>
</asp:Content>

