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
                <asp:TemplateField HeaderText="TYPE" SortExpression="TYPE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TYPE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("TYPE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TYPE_NAME" SortExpression="TYPE_NAME">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("TYPE_NAME") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TYPE_NAME") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="APP_CODE" SortExpression="APP_CODE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("APP_CODE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("APP_CODE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="NOTE" SortExpression="NOTE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("NOTE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("NOTE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UPDATE_PERSON" SortExpression="UPDATE_PERSON">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("UPDATE_PERSON") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("UPDATE_PERSON") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UPDATE_DATE" SortExpression="UPDATE_DATE">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("UPDATE_DATE") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("UPDATE_DATE") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="キャンセル" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="編集" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="削除" />
                    </ItemTemplate>
                </asp:TemplateField>
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
