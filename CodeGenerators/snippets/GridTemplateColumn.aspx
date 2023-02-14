<telerik:GridTemplateColumn HeaderText="{ht}" UniqueName="{col}" SortExpression="{col}">
<EditItemTemplate>
    <telerik:RadTextBox ID="{col}" runat="server" ></telerik:RadTextBox>
<%-- <telerik:RadDropDownList ID="{col}" runat="server"></telerik:RadDropDownList> --%>
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lbl{col}" runat="server" Text='<%# Bind("{col}") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>