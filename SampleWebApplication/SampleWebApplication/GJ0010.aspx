<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GJ0010.aspx.cs" Inherits="SampleWebApplication.GJ0010" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="ID">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="TYPE" HeaderText="TYPE" SortExpression="TYPE" />
                <asp:BoundField DataField="TYPE_NAME" HeaderText="TYPE_NAME" SortExpression="TYPE_NAME" />
                <asp:BoundField DataField="APP_CODE" HeaderText="APP_CODE" SortExpression="APP_CODE" />
                <asp:BoundField DataField="NOTE" HeaderText="NOTE" SortExpression="NOTE" />
                <asp:BoundField DataField="UPDATE_PERSON" HeaderText="UPDATE_PERSON" SortExpression="UPDATE_PERSON" />
                <asp:BoundField DataField="UPDATE_DATE" HeaderText="UPDATE_DATE" SortExpression="UPDATE_DATE" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            DeleteCommand="DELETE FROM FURU.TYPE_MASTER WHERE (ID = :original_ID)"
            InsertCommand="INSERT INTO FURU.TYPE_MASTER(&quot;TYPE&quot;, TYPE_NAME, APP_CODE, NOTE, UPDATE_PERSON, UPDATE_DATE) VALUES ( :TYPE , :TYPE_NAME, :APP_CODE, :NOTE, :UPDATE_PERSON, :UPDATE_DATE)"
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
            SelectCommand="SELECT FURU.TYPE_MASTER.* FROM FURU.TYPE_MASTER"
            UpdateCommand="UPDATE FURU.TYPE_MASTER SET &quot;TYPE&quot; = :TYPE , TYPE_NAME = :TYPE_NAME, APP_CODE = :APP_CODE, NOTE = :NOTE, UPDATE_PERSON = UPDATE_PERSON, UPDATE_DATE = :UPDATE_DATE WHERE (ID = :original_ID)"
            OldValuesParameterFormatString="original_{0}">

            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TYPE" Type="String" />
                <asp:Parameter Name="TYPE_NAME" Type="String" />
                <asp:Parameter Name="APP_CODE" Type="String" />
                <asp:Parameter Name="NOTE" Type="String" />
                <asp:Parameter Name="UPDATE_PERSON" Type="String" />
                <asp:Parameter Name="UPDATE_DATE" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="original_ID" Type="Decimal" />
                <asp:Parameter Name="TYPE" Type="String" />
                <asp:Parameter Name="TYPE_NAME" Type="String" />
                <asp:Parameter Name="APP_CODE" Type="String" />
                <asp:Parameter Name="NOTE" Type="String" />
                <asp:Parameter Name="UPDATE_PERSON" Type="String" />
                <asp:Parameter Name="UPDATE_DATE" Type="DateTime" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceForSampleDB" runat="server"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
