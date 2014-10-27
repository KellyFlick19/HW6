﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newrecipe.aspx.vb" Inherits="newrecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kelly's recipe Website</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
        
        <span class="header">Kelly&#39;s Simple Recipe Guide</span></div>
        <hr />
     
         <br /><a href="Default.aspx" style="color: #696969">Home</a>&nbsp; |&nbsp; <a href="newrecipe.aspx" style="color: #696969">New Recipe</a>&nbsp; |&nbsp; <a href="aboutus.aspx" style="color: #696969">About Us</a>&nbsp; |&nbsp; <a href="contactus.aspx" style="color: #696969">Contact</a>
            <br /><br />
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:flick_recipes %>" DeleteCommand="DELETE FROM [flick_recipes] WHERE [recipeID] = @recipeID" InsertCommand="INSERT INTO [flick_recipes] ([name], [submitby], [ing_1], [ing_2], [ing_3], [ing_4], [ing_5], [prep], [notes]) VALUES (@name, @submitby, @ing_1, @ing_2, @ing_3, @ing_4, @ing_5, @prep, @notes)" SelectCommand="SELECT * FROM [flick_recipes]" UpdateCommand="UPDATE [flick_recipes] SET [name] = @name, [submitby] = @submitby, [ing_1] = @ing_1, [ing_2] = @ing_2, [ing_3] = @ing_3, [ing_4] = @ing_4, [ing_5] = @ing_5, [prep] = @prep, [notes] = @notes WHERE [recipeID] = @recipeID">
            <DeleteParameters>
                <asp:Parameter Name="recipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="submitby" Type="String" />
                <asp:Parameter Name="ing_1" Type="String" />
                <asp:Parameter Name="ing_2" Type="String" />
                <asp:Parameter Name="ing_3" Type="String" />
                <asp:Parameter Name="ing_4" Type="String" />
                <asp:Parameter Name="ing_5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="submitby" Type="String" />
                <asp:Parameter Name="ing_1" Type="String" />
                <asp:Parameter Name="ing_2" Type="String" />
                <asp:Parameter Name="ing_3" Type="String" />
                <asp:Parameter Name="ing_4" Type="String" />
                <asp:Parameter Name="ing_5" Type="String" />
                <asp:Parameter Name="prep" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="recipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" HorizontalAlign="Center" Width="296px">
            <CommandRowStyle BackColor="LightCoral" Font-Bold="True" />
            <EditRowStyle BackColor="LightCoral" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="submitby" HeaderText="Submitted By" SortExpression="submitby" />
                <asp:BoundField DataField="ing_1" HeaderText="Ingredient 1" SortExpression="ing_1" />
                <asp:BoundField DataField="ing_2" HeaderText="Ingredient 2" SortExpression="ing_2" />
                <asp:BoundField DataField="ing_3" HeaderText="Ingredient 3" SortExpression="ing_3" />
                <asp:BoundField DataField="ing_4" HeaderText="Ingredient 4" SortExpression="ing_4" />
                <asp:BoundField DataField="ing_5" HeaderText="Ingredient 5" SortExpression="ing_5" />
                <asp:BoundField DataField="prep" HeaderText="Preparation" SortExpression="prep" />
                <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
                <asp:CommandField ShowInsertButton="True" >
                <ControlStyle ForeColor="DimGray" />
                </asp:CommandField>
            </Fields>
            <EditRowStyle BackColor="LightCoral"  />
            <HeaderStyle BackColor="DimGray"   ForeColor="White" />
            <RowStyle BackColor="LightCoral" />
        </asp:DetailsView>
    
    </div>
    </form>
    <br />
    <i class="footer">Copyright © 2014. Created by Kelly Flick.</i>
</body>
</html>
