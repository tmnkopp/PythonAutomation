<telerik:GridTemplateColumn HeaderText="{ht}" UniqueName="{col}" SortExpression="{col}">
<EditItemTemplate> 
    <%-- --%>
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lbl{col}" runat="server" Text='<%# Bind("{col}") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>