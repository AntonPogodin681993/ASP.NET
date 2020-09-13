<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="StudentRegisForm.aspx.cs" Inherits="StudentRegisForm" UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <div>
        <h1>Форма учета успеваимости студентов</h1><p></p>
    </div>

    <div>
         <label>Имя студента:</label>
         <asp:TextBox ID="firstname" runat="server">
            </asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="firstname"
                ErrorMessage="Заполните поле имени" 
                ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
    </div>
    <div><p></p>
         <label>Фамилия студента:</label>
        <asp:TextBox ID="lastname" runat="server">
            </asp:TextBox> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="lastname"
                ErrorMessage="Заполните поле фамилии" 
                ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
    </div><p></p>

    <div><h2>Введите кол-во баллов,согласно дисцеплине:</h2></div>
    <div>
         <label>Метематика:</label>
         <asp:TextBox ID="mbal" runat="server">
            </asp:TextBox> <p></p>
    </div>
    <div>
         <label>История:</label>
         <asp:TextBox ID="hbal" runat="server">
            </asp:TextBox> <p></p>
    </div>
      <div>
         <label>Русский язык:</label>
         <asp:TextBox ID="rlan" runat="server">
            </asp:TextBox> 
    </div>
     <div>
        <button type="submit">Загрузить в ведомость</button>
    </div>
</asp:Content>

