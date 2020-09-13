<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="StudenRating.aspx.cs" Inherits="StudenRating" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div><h2>Топ-5 лучших студентов<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Сумма баллов" HeaderText="Сумма баллов" SortExpression="Сумма баллов" />
            <asp:BoundField DataField="Имя" HeaderText="Имя" SortExpression="Имя" />
            <asp:BoundField DataField="Фамилия" HeaderText="Фамилия" SortExpression="Фамилия" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=TestAssignment.AcademicPerformanceDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT TOP (5) StudentBalls.SumBalls AS [Сумма баллов], StudentRegs.FirstName AS Имя, StudentRegs.LastName AS Фамилия FROM StudentBalls INNER JOIN StudentRegs ON StudentBalls.StRg_StudentRegId = StudentRegs.StudentRegId ORDER BY [Сумма баллов] DESC"></asp:SqlDataSource>
        </h2></div><p></p>
    <div><h2>5 худших студентов<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Имя" HeaderText="Имя" SortExpression="Имя" />
            <asp:BoundField DataField="Фамилия" HeaderText="Фамилия" SortExpression="Фамилия" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=TestAssignment.AcademicPerformanceDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient"
            SelectCommand="SELECT FirstName AS Имя, LastName AS Фамилия FROM StudentRegs AS s WHERE (StudentRegId IN (SELECT StRg_StudentRegId FROM StudentBalls AS scr WHERE (StRg_StudentRegId IN (SELECT TOP (5) StRg_StudentRegId FROM StudentBalls ORDER BY SumBalls))))"></asp:SqlDataSource>
        </h2></div>
</asp:Content>

