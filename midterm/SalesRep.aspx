<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="SalesRep.aspx.cs" Inherits="midterm.SalesRep" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Sales Rep Details</h1>

    <fieldset>
        <label for="txtFirstName" class="col-sm-2">First Name:</label>
        <asp:TextBox ID="txtFirstName" runat="server" required="true" MaxLength="50"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator0" runat="server"
                ErrorMessage="Required" ControlToValidate="txtFirstName" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
    </fieldset>
    <fieldset>
        <label for="txtLastName" class="col-sm-2">Last Name:</label>
        <asp:TextBox ID="txtLastName" runat="server" required="true" MaxLength="50"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ErrorMessage="Required" ControlToValidate="txtLastName" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
    </fieldset>
      <fieldset>
        <label for="txtProvince" class="col-sm-2">Province</label>
        <asp:TextBox ID="txtProvince" runat="server" required="true" MaxLength="2"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                ErrorMessage="Required" ControlToValidate="txtProvince" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
    </fieldset>
      <fieldset>
        <label for="txtRevenue" class="col-sm-2">Revenue</label>
        <asp:TextBox ID="txtRevenue" runat="server" required="true" MaxLength="18"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                ErrorMessage="Required" ControlToValidate="txtRevenue" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
          <asp:RangeValidator ID="RangeValidator2" runat="server"
                ErrorMessage="Enter a number greater than 0 and less then 999999999" ControlToValidate="txtRevenue"
                Type="Double" MinimumValue="0.01" MaximumValue="999999999" Display="Dynamic" CssClass="label label-danger"></asp:RangeValidator>
    </fieldset>
      <fieldset>
        <label for="txtExpenses" class="col-sm-2">Expenses</label>
        <asp:TextBox ID="txtExpenses" runat="server" required="true" MaxLength="18"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                ErrorMessage="Required" ControlToValidate="txtExpenses" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
          <asp:RangeValidator ID="RangeValidator3" runat="server"
                ErrorMessage="Enter a number greater than 0 and less then 999999999" ControlToValidate="txtExpenses"
                Type="Double" MinimumValue="0.01" MaximumValue="999999999" Display="Dynamic" CssClass="label label-danger"></asp:RangeValidator>
    </fieldset>
      <fieldset>
        <label for="chkBoxManager" class="col-sm-2">Manager</label>
        <asp:CheckBox ID="chkBoxManager" runat="server" required="true" ></asp:CheckBox>

    </fieldset>
    <fieldset>
        <label for="txtHireDate" class="col-sm-2">HireDate</label>
        <asp:TextBox ID="txtHireDate" runat="server" required="true" MaxLength="50"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Must be a date" ControlToValidate="txtHireDate"
            CssClass="alert alert-danger" Type="Date" MinimumValue="01/01/2000" MaximumValue="12/31/2999"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                ErrorMessage="Required" ControlToValidate="txtHireDate" Display="Dynamic" CssClass="label label-danger"></asp:RequiredFieldValidator>
    </fieldset>

    <div class="col-sm-offset-2">
        <asp:Button id="btnSave" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="btnSave_Click"
            />
    </div>


</asp:Content>
