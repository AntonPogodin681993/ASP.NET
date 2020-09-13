<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="GradeSheet.aspx.cs" Inherits="GradeSheet" UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div><h2>Учебная ведомость</h2></div><p></p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Имя" HeaderText="Имя" SortExpression="Имя" />
            <asp:BoundField DataField="Фамилия" HeaderText="Фамилия" SortExpression="Фамилия" />
            <asp:BoundField DataField="Баллы по математике" HeaderText="Баллы по математике" SortExpression="Баллы по математике" />
            <asp:BoundField DataField="Балы по истории" HeaderText="Балы по истории" SortExpression="Балы по истории" />
            <asp:BoundField DataField="Баллы по русскому языку" HeaderText="Баллы по русскому языку" SortExpression="Баллы по русскому языку" />
            <asp:BoundField DataField="Сумма балов" HeaderText="Сумма балов" SortExpression="Сумма балов" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=TestAssignment.AcademicPerformanceDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" 
        SelectCommand=
        "SELECT StudentRegs.FirstName AS Имя, StudentRegs.LastName AS Фамилия, 
        StudentBalls.MathBall AS [Баллы по математике], 
        StudentBalls.HistBall AS [Балы по истории], 
        StudentBalls.RusLang AS [Баллы по русскому языку], 
        StudentBalls.SumBalls AS [Сумма балов]
        FROM StudentBalls INNER JOIN StudentRegs ON StudentBalls.StRg_StudentRegId = StudentRegs.StudentRegId 
        ORDER BY [Сумма балов] DESC"></asp:SqlDataSource>
</asp:Content>

