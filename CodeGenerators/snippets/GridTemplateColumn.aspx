<CB:CBGridTemplateColumn UniqueName="{COLUMN_NAME}" HeaderText="{COLUMN_NAME}"> 
    <EditItemTemplate>
        <asp:TextBox ID="{COLUMN_NAME}" runat="server" /> 
    </EditItemTemplate>
    <ItemTemplate>
        <asp:Label ID="{COLUMN_NAME}" runat="server" Text='<%# Bind("{COLUMN_NAME}") %>'></asp:Label>
    </ItemTemplate> 
</CB:CBGridTemplateColumn>
