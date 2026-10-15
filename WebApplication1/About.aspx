<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tootajaID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="tootajaID" HeaderText="tootajaID" ReadOnly="True" SortExpression="tootajaID" />
                <asp:BoundField DataField="nimiPerenimi" HeaderText="nimiPerenimi" SortExpression="nimiPerenimi" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VSAndmebaasConnectionString1 %>" DeleteCommand="DELETE FROM [tootajaSet] WHERE [tootajaID] = @tootajaID" InsertCommand="INSERT INTO [tootajaSet] ([nimiPerenimi]) VALUES (@nimiPerenimi)" ProviderName="<%$ ConnectionStrings:VSAndmebaasConnectionString1.ProviderName %>" SelectCommand="SELECT [tootajaID], [nimiPerenimi] FROM [tootajaSet]" UpdateCommand="UPDATE [tootajaSet] SET [nimiPerenimi] = @nimiPerenimi WHERE [tootajaID] = @tootajaID">
            <DeleteParameters>
                <asp:Parameter Name="tootajaID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nimiPerenimi" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nimiPerenimi" Type="String" />
                <asp:Parameter Name="tootajaID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
        <h2><strong>Lisa töötaja</strong></h2>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="tootajaID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="tootajaID" HeaderText="tootajaID" InsertVisible="False" ReadOnly="True" SortExpression="tootajaID" />
                <asp:BoundField DataField="nimiPerenimi" HeaderText="nimiPerenimi" SortExpression="nimiPerenimi" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </p>
    </main>
</asp:Content>
