<telerik:GridTemplateColumn HeaderText="Agency Name" UniqueName="AgencyName" SortExpression="AgencyName">
<EditItemTemplate> 
    <telerik:RadTextBox ID="AgencyName" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblAgencyName" runat="server" Text='<%# Bind("AgencyName") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="System Name" UniqueName="SystemName" SortExpression="SystemName">
<EditItemTemplate> 
    <telerik:RadTextBox ID="SystemName" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblSystemName" runat="server" Text='<%# Bind("SystemName") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="FISMA System ID" UniqueName="FISMASystemID" SortExpression="FISMASystemID">
<EditItemTemplate> 
    <telerik:RadTextBox ID="FISMASystemID" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblFISMASystemID" runat="server" Text='<%# Bind("FISMASystemID") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="FIPS 199 System Categorization" UniqueName="FIPS199SystemCategorization" SortExpression="FIPS199SystemCategorization">
<EditItemTemplate> 
    <telerik:RadDropDownList ID="FIPS199SystemCategorization" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblFIPS199SystemCategorization" runat="server" Text='<%# Bind("FIPS199SystemCategorization") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="High Value Asset ID" UniqueName="HighValueAssetID" SortExpression="HighValueAssetID">
<EditItemTemplate> 
    <telerik:RadTextBox ID="HighValueAssetID" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblHighValueAssetID" runat="server" Text='<%# Bind("HighValueAssetID") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Cryptographic Module Name" UniqueName="CryptoModuleName" SortExpression="CryptoModuleName">
<EditItemTemplate> 
    <telerik:RadTextBox ID="CryptoModuleName" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblCryptoModuleName" runat="server" Text='<%# Bind("CryptoModuleName") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Cryptographic Algorithm Used" UniqueName="CryptoAlgorithmUsed" SortExpression="CryptoAlgorithmUsed">
<EditItemTemplate> 
    <telerik:RadDropDownList ID="CryptoAlgorithmUsed" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblCryptoAlgorithmUsed" runat="server" Text='<%# Bind("CryptoAlgorithmUsed") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Service Provided By Cryptographic Module" UniqueName="ServiceProvidedByCryptoModule" SortExpression="ServiceProvidedByCryptoModule">
<EditItemTemplate> 
    <telerik:RadTextBox ID="ServiceProvidedByCryptoModule" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblServiceProvidedByCryptoModule" runat="server" Text='<%# Bind("ServiceProvidedByCryptoModule") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Length of associated cryptographic keys or modules" UniqueName="LengthCryptoKeysModules" SortExpression="LengthCryptoKeysModules">
<EditItemTemplate> 
    <telerik:RadDropDownList ID="LengthCryptoKeysModules" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblLengthCryptoKeysModules" runat="server" Text='<%# Bind("LengthCryptoKeysModules") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Software Package Type (COTS/GOTS/NDI/Other)" UniqueName="SoftwarePackageType" SortExpression="SoftwarePackageType">
<EditItemTemplate> 
    <telerik:RadDropDownList ID="SoftwarePackageType" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblSoftwarePackageType" runat="server" Text='<%# Bind("SoftwarePackageType") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Name of Vendor/Developer" UniqueName="NameofVendorDev" SortExpression="NameofVendorDev">
<EditItemTemplate> 
    <telerik:RadTextBox ID="NameofVendorDev" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblNameofVendorDev" runat="server" Text='<%# Bind("NameofVendorDev") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Software Package Name(s) (if commercial or open source); if unknown input 'N/A'" UniqueName="SoftwarePackageNames" SortExpression="SoftwarePackageNames">
<EditItemTemplate> 
    <telerik:RadTextBox ID="SoftwarePackageNames" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblSoftwarePackageNames" runat="server" Text='<%# Bind("SoftwarePackageNames") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Software Package Version(s) (optional)" UniqueName="SoftwarePackageVersions" SortExpression="SoftwarePackageVersions">
<EditItemTemplate> 
    <telerik:RadTextBox ID="SoftwarePackageVersions" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblSoftwarePackageVersions" runat="server" Text='<%# Bind("SoftwarePackageVersions") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Operating System (including Major and Minor version)" UniqueName="OperatingSystem" SortExpression="OperatingSystem">
<EditItemTemplate> 
    <telerik:RadTextBox ID="OperatingSystem" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblOperatingSystem" runat="server" Text='<%# Bind("OperatingSystem") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Hosting Information" UniqueName="HostingInfo" SortExpression="HostingInfo">
<EditItemTemplate> 
    <telerik:RadDropDownList ID="HostingInfo" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblHostingInfo" runat="server" Text='<%# Bind("HostingInfo") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Cloud Service Providers" UniqueName="CloudServiceProviders" SortExpression="CloudServiceProviders">
<EditItemTemplate> 
    <telerik:RadDropDownList ID="CloudServiceProviders" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblCloudServiceProviders" runat="server" Text='<%# Bind("CloudServiceProviders") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Government Cloud Providers" UniqueName="GovernmentCloudProviders" SortExpression="GovernmentCloudProviders">
<EditItemTemplate> 
    <telerik:RadDropDownList ID="GovernmentCloudProviders" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblGovernmentCloudProviders" runat="server" Text='<%# Bind("GovernmentCloudProviders") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Hybrid Cloud Providers" UniqueName="HybridCloudProviders" SortExpression="HybridCloudProviders">
<EditItemTemplate> 
    <telerik:RadDropDownList ID="HybridCloudProviders" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblHybridCloudProviders" runat="server" Text='<%# Bind("HybridCloudProviders") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Estimate of FY 2025 Budget Requirements for Federal Workforce ($K)*" UniqueName="EstFY2025BudgetReqsforFed" SortExpression="EstFY2025BudgetReqsforFed">
<EditItemTemplate> 
    <telerik:RadTextBox ID="EstFY2025BudgetReqsforFed" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblEstFY2025BudgetReqsforFed" runat="server" Text='<%# Bind("EstFY2025BudgetReqsforFed") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Estimate of FY 2025 Budget Requirements for Contractors ($K)*" UniqueName="EstFY2025BudgetReqsforCon" SortExpression="EstFY2025BudgetReqsforCon">
<EditItemTemplate> 
    <telerik:RadTextBox ID="EstFY2025BudgetReqsforCon" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblEstFY2025BudgetReqsforCon" runat="server" Text='<%# Bind("EstFY2025BudgetReqsforCon") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Estimate of FY 2025 Budget Requirements for Sytems/Investments ($K)*" UniqueName="EstFY2025BudgetReqsforSytemsInv" SortExpression="EstFY2025BudgetReqsforSytemsInv">
<EditItemTemplate> 
    <telerik:RadTextBox ID="EstFY2025BudgetReqsforSytemsInv" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblEstFY2025BudgetReqsforSytemsInv" runat="server" Text='<%# Bind("EstFY2025BudgetReqsforSytemsInv") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Estimate of Total Budget Requirement, which includes FY 2025 Requirement for Federal Workforce ($K)*" UniqueName="EstTotalBudgetReqFY2025ReqforFed" SortExpression="EstTotalBudgetReqFY2025ReqforFed">
<EditItemTemplate> 
    <telerik:RadTextBox ID="EstTotalBudgetReqFY2025ReqforFed" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblEstTotalBudgetReqFY2025ReqforFed" runat="server" Text='<%# Bind("EstTotalBudgetReqFY2025ReqforFed") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Estimate of Total Budget Requirement, which includes FY 2025 Requirement for Contractors  ($K)*" UniqueName="EstTotalBudgetReqFY2025ReqforCon" SortExpression="EstTotalBudgetReqFY2025ReqforCon">
<EditItemTemplate> 
    <telerik:RadTextBox ID="EstTotalBudgetReqFY2025ReqforCon" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblEstTotalBudgetReqFY2025ReqforCon" runat="server" Text='<%# Bind("EstTotalBudgetReqFY2025ReqforCon") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Estimate of Total Budget Requirement, which includes FY 2025 Requirement for Sytems/Investments ($K)*" UniqueName="EstTotalBudgetReqFY2025ReqforSytemsInv" SortExpression="EstTotalBudgetReqFY2025ReqforSytemsInv">
<EditItemTemplate> 
    <telerik:RadTextBox ID="EstTotalBudgetReqFY2025ReqforSytemsInv" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblEstTotalBudgetReqFY2025ReqforSytemsInv" runat="server" Text='<%# Bind("EstTotalBudgetReqFY2025ReqforSytemsInv") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Projected System Refresh Year" UniqueName="ProjectedSystemRefreshYear" SortExpression="ProjectedSystemRefreshYear">
<EditItemTemplate> 
    <telerik:RadTextBox ID="ProjectedSystemRefreshYear" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblProjectedSystemRefreshYear" runat="server" Text='<%# Bind("ProjectedSystemRefreshYear") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Crosscutting Costs" UniqueName="CrosscuttingCosts" SortExpression="CrosscuttingCosts">
<EditItemTemplate> 
    <telerik:RadTextBox ID="CrosscuttingCosts" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblCrosscuttingCosts" runat="server" Text='<%# Bind("CrosscuttingCosts") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn>
<telerik:GridTemplateColumn HeaderText="Additional Notes" UniqueName="AdditionalNotes" SortExpression="AdditionalNotes">
<EditItemTemplate> 
    <telerik:RadTextBox ID="AdditionalNotes" runat="server" />
</EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="lblAdditionalNotes" runat="server" Text='<%# Bind("AdditionalNotes") %>'></asp:Label>
</ItemTemplate>
</telerik:GridTemplateColumn> 

 BindDDL(e, "FIPS199SystemCategorization", "FIPS199SystemCategorization", "FIPS199SystemCategorization")
BindDDL(e, "CryptoAlgorithmUsed", "CryptoAlgorithmUsed", "CryptoAlgorithmUsed")
BindDDL(e, "LengthCryptoKeysModules", "LengthCryptoKeysModules", "LengthCryptoKeysModules")
BindDDL(e, "SoftwarePackageType", "SoftwarePackageType", "SoftwarePackageType")
BindDDL(e, "HostingInfo", "HostingInfo", "HostingInfo")
BindDDL(e, "CloudServiceProviders", "CloudServiceProviders", "CloudServiceProviders")
BindDDL(e, "GovernmentCloudProviders", "GovernmentCloudProviders", "GovernmentCloudProviders")
BindDDL(e, "HybridCloudProviders", "HybridCloudProviders", "HybridCloudProviders") 

 DirectCast(e.Item.FindControl($"AgencyName"), RadTextBox).Text = drVal("AgencyName").ToString()
DirectCast(e.Item.FindControl($"SystemName"), RadTextBox).Text = drVal("SystemName").ToString()
DirectCast(e.Item.FindControl($"FISMASystemID"), RadTextBox).Text = drVal("FISMASystemID").ToString()
DirectCast(e.Item.FindControl($"HighValueAssetID"), RadTextBox).Text = drVal("HighValueAssetID").ToString()
DirectCast(e.Item.FindControl($"CryptoModuleName"), RadTextBox).Text = drVal("CryptoModuleName").ToString()
DirectCast(e.Item.FindControl($"ServiceProvidedByCryptoModule"), RadTextBox).Text = drVal("ServiceProvidedByCryptoModule").ToString()
DirectCast(e.Item.FindControl($"NameofVendorDev"), RadTextBox).Text = drVal("NameofVendorDev").ToString()
DirectCast(e.Item.FindControl($"SoftwarePackageNames"), RadTextBox).Text = drVal("SoftwarePackageNames").ToString()
DirectCast(e.Item.FindControl($"SoftwarePackageVersions"), RadTextBox).Text = drVal("SoftwarePackageVersions").ToString()
DirectCast(e.Item.FindControl($"OperatingSystem"), RadTextBox).Text = drVal("OperatingSystem").ToString()
DirectCast(e.Item.FindControl($"EstFY2025BudgetReqsforFed"), RadTextBox).Text = drVal("EstFY2025BudgetReqsforFed").ToString()
DirectCast(e.Item.FindControl($"EstFY2025BudgetReqsforCon"), RadTextBox).Text = drVal("EstFY2025BudgetReqsforCon").ToString()
DirectCast(e.Item.FindControl($"EstFY2025BudgetReqsforSytemsInv"), RadTextBox).Text = drVal("EstFY2025BudgetReqsforSytemsInv").ToString()
DirectCast(e.Item.FindControl($"EstTotalBudgetReqFY2025ReqforFed"), RadTextBox).Text = drVal("EstTotalBudgetReqFY2025ReqforFed").ToString()
DirectCast(e.Item.FindControl($"EstTotalBudgetReqFY2025ReqforCon"), RadTextBox).Text = drVal("EstTotalBudgetReqFY2025ReqforCon").ToString()
DirectCast(e.Item.FindControl($"EstTotalBudgetReqFY2025ReqforSytemsInv"), RadTextBox).Text = drVal("EstTotalBudgetReqFY2025ReqforSytemsInv").ToString()
DirectCast(e.Item.FindControl($"ProjectedSystemRefreshYear"), RadTextBox).Text = drVal("ProjectedSystemRefreshYear").ToString()
DirectCast(e.Item.FindControl($"CrosscuttingCosts"), RadTextBox).Text = drVal("CrosscuttingCosts").ToString()
DirectCast(e.Item.FindControl($"AdditionalNotes"), RadTextBox).Text = drVal("AdditionalNotes").ToString() 

 AgencyName
,SystemName
,FISMASystemID
,FIPS199SystemCategorization
,HighValueAssetID
,CryptoModuleName
,CryptoAlgorithmUsed
,ServiceProvidedByCryptoModule
,LengthCryptoKeysModules
,SoftwarePackageType
,NameofVendorDev
,SoftwarePackageNames
,SoftwarePackageVersions
,OperatingSystem
,HostingInfo
,CloudServiceProviders
,GovernmentCloudProviders
,HybridCloudProviders
,EstFY2025BudgetReqsforFed
,EstFY2025BudgetReqsforCon
,EstFY2025BudgetReqsforSytemsInv
,EstTotalBudgetReqFY2025ReqforFed
,EstTotalBudgetReqFY2025ReqforCon
,EstTotalBudgetReqFY2025ReqforSytemsInv
,ProjectedSystemRefreshYear
,CrosscuttingCosts
,AdditionalNotes