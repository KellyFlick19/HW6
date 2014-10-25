<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kelly's Recipe Website</title>
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
    </div>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="recipeID" DataSourceID="SqlDataSource1" Width="352px" AllowPaging="True" AllowSorting="True" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Recipe Name" SortExpression="name" />
                <asp:BoundField DataField="submitby" HeaderText="Submitted by" SortExpression="submitby" />
            </Columns>
        </asp:GridView>
    </form>
    <br />
    <i class="footer">Copyright © 2014. Created by Kelly Flick.</i>
  
</body>
</html>
