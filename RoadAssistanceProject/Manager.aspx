<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Feedback] WHERE [FeedbackID] = @original_FeedbackID AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL)) AND (([Rating] = @original_Rating) OR ([Rating] IS NULL AND @original_Rating IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL))" InsertCommand="INSERT INTO [Feedback] ([CustomerID], [Comment], [Rating], [Date]) VALUES (@CustomerID, @Comment, @Rating, @Date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [CustomerID] = @CustomerID, [Comment] = @Comment, [Rating] = @Rating, [Date] = @Date WHERE [FeedbackID] = @original_FeedbackID AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL)) AND (([Comment] = @original_Comment) OR ([Comment] IS NULL AND @original_Comment IS NULL)) AND (([Rating] = @original_Rating) OR ([Rating] IS NULL AND @original_Rating IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_FeedbackID" Type="Int32" />
                    <asp:Parameter Name="original_CustomerID" Type="Int32" />
                    <asp:Parameter Name="original_Comment" Type="String" />
                    <asp:Parameter Name="original_Rating" Type="Double" />
                    <asp:Parameter Name="original_Date" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="Comment" Type="String" />
                    <asp:Parameter Name="Rating" Type="Double" />
                    <asp:Parameter Name="Date" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                    <asp:Parameter Name="Comment" Type="String" />
                    <asp:Parameter Name="Rating" Type="Double" />
                    <asp:Parameter Name="Date" Type="String" />
                    <asp:Parameter Name="original_FeedbackID" Type="Int32" />
                    <asp:Parameter Name="original_CustomerID" Type="Int32" />
                    <asp:Parameter Name="original_Comment" Type="String" />
                    <asp:Parameter Name="original_Rating" Type="Double" />
                    <asp:Parameter Name="original_Date" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FeedbackID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="FeedbackID" HeaderText="FeedbackID" ReadOnly="True" SortExpression="FeedbackID" InsertVisible="False" />
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
                <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerID] = @original_CustomerID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND [Username] = @original_Username AND [Password] = @original_Password AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([DoB] = @original_DoB) OR ([DoB] IS NULL AND @original_DoB IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Insurance] = @original_Insurance) OR ([Insurance] IS NULL AND @original_Insurance IS NULL)) AND (([License] = @original_License) OR ([License] IS NULL AND @original_License IS NULL)) AND (([Avatar] = @original_Avatar) OR ([Avatar] IS NULL AND @original_Avatar IS NULL))" InsertCommand="INSERT INTO [Customer] ([CustomerID], [FirstName], [LastName], [Username], [Password], [Email], [Address], [Phone], [DoB], [Gender], [Insurance], [License], [Avatar]) VALUES (@CustomerID, @FirstName, @LastName, @Username, @Password, @Email, @Address, @Phone, @DoB, @Gender, @Insurance, @License, @Avatar)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [FirstName] = @FirstName, [LastName] = @LastName, [Username] = @Username, [Password] = @Password, [Email] = @Email, [Address] = @Address, [Phone] = @Phone, [DoB] = @DoB, [Gender] = @Gender, [Insurance] = @Insurance, [License] = @License, [Avatar] = @Avatar WHERE [CustomerID] = @original_CustomerID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND [Username] = @original_Username AND [Password] = @original_Password AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([DoB] = @original_DoB) OR ([DoB] IS NULL AND @original_DoB IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Insurance] = @original_Insurance) OR ([Insurance] IS NULL AND @original_Insurance IS NULL)) AND (([License] = @original_License) OR ([License] IS NULL AND @original_License IS NULL)) AND (([Avatar] = @original_Avatar) OR ([Avatar] IS NULL AND @original_Avatar IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_CustomerID" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
                <asp:Parameter DbType="Date" Name="original_DoB" />
                <asp:Parameter Name="original_Gender" Type="Byte" />
                <asp:Parameter Name="original_Insurance" Type="String" />
                <asp:Parameter Name="original_License" Type="String" />
                <asp:Parameter Name="original_Avatar" Type="Object" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerID" Type="Int32" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter DbType="Date" Name="DoB" />
                <asp:Parameter Name="Gender" Type="Byte" />
                <asp:Parameter Name="Insurance" Type="String" />
                <asp:Parameter Name="License" Type="String" />
                <asp:Parameter Name="Avatar" Type="Object" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter DbType="Date" Name="DoB" />
                <asp:Parameter Name="Gender" Type="Byte" />
                <asp:Parameter Name="Insurance" Type="String" />
                <asp:Parameter Name="License" Type="String" />
                <asp:Parameter Name="Avatar" Type="Object" />
                <asp:Parameter Name="original_CustomerID" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
                <asp:Parameter DbType="Date" Name="original_DoB" />
                <asp:Parameter Name="original_Gender" Type="Byte" />
                <asp:Parameter Name="original_Insurance" Type="String" />
                <asp:Parameter Name="original_License" Type="String" />
                <asp:Parameter Name="original_Avatar" Type="Object" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="DoB" HeaderText="DoB" SortExpression="DoB" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Insurance" HeaderText="Insurance" SortExpression="Insurance" />
                <asp:BoundField DataField="License" HeaderText="License" SortExpression="License" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
