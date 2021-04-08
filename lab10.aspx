<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="name" DataSourceID="AccessDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource3" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="cource" HeaderText="cource" SortExpression="cource" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="Z:\CA261_ .netprograming\Databasse21.accdb" SelectCommand="SELECT `cource` FROM `Table1`"></asp:AccessDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="AccessDataSource2" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="num" HeaderText="num" SortExpression="num" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="Z:\CA261_ .netprograming\Databasse21.accdb" SelectCommand="SELECT `num` FROM `Table1`"></asp:AccessDataSource>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="Z:\CA261_ .netprograming\Databasse21.accdb" DeleteCommand="DELETE FROM `Table1` WHERE `name` = ?" InsertCommand="INSERT INTO `Table1` (`name`) VALUES (?)" SelectCommand="SELECT `name` FROM `Table1`">
            <DeleteParameters>
                <asp:Parameter Name="name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
            </InsertParameters>
        </asp:AccessDataSource>
    </div>
</asp:Content>
