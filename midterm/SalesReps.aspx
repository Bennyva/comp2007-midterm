<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="SalesReps.aspx.cs" Inherits="midterm.SalesReps" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <%-- <a href="salesrep.aspx">Sales Reps</a>--%>

    <asp:GridView ID="grdSalesReps" runat="server" CssClass="table table-striped table-hover" AutoGenerateColumns="false" 
         DataKeyNames="SalesRepID">
        <Columns>
            <asp:BoundField DataField="SalesRepID" HeaderText="Sales Rep ID" />
            <asp:BoundField DataField="FirstName" HeaderText="First Name" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
            <asp:BoundField DataField="Province" HeaderText="Province" />
            <asp:BoundField DataField="Revenue" HeaderText="Revenue" DataFormatString="{0:c}" />
            <asp:BoundField DataField="Expenses" HeaderText="Expenses" DataFormatString="{0:c}" />
            <asp:BoundField DataField="NetIncome" HeaderText="Net Income" DataFormatString="{0:c}" />
            <asp:BoundField DataField="Manager" HeaderText="Manager" />
            <asp:BoundField DataField="HireDate" HeaderText="Date Hired" DataFormatString="{0:MM-dd-yyyy}"/>

        </Columns>
    </asp:GridView>
</asp:Content>
