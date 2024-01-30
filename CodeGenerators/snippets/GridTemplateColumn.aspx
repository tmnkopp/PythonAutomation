<telerik:GridTemplateColumn UniqueName="{COLUMN_NAME}"  Visible="true" HeaderText="{COLUMN_NAME}" SortExpression="{COLUMN_NAME}" > 
    <EditItemTemplate>
        <%-- --%> 
    </EditItemTemplate>
    <ItemTemplate>
        <asp:Label ID="{COLUMN_NAME}" runat="server" Text='<%# Bind("{Bind_COLUMN_NAME}") %>'></asp:Label>
    </ItemTemplate> 
</telerik:GridTemplateColumn>