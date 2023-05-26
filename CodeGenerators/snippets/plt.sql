--{Description} 
SET @PK_PickListType={PK_PickListType}
DELETE PickLists WHERE PK_PickListType=@PK_PickListType
DELETE PickListTypes WHERE PK_PickListType=@PK_PickListType
INSERT INTO PickListTypes(PK_PickListType, [Description], UsageField)
SELECT @PK_PickListType, '{Description}', '{UsageField}' 

SET IDENTITY_INSERT [dbo].[PickLists] ON 
INSERT INTO PickLists(PK_PickList, PK_PickListType, DisplayValue, CodeValue, LastUpdated, SortPos, isActive) VALUES 
{picklists.sql} 
SET IDENTITY_INSERT [dbo].[PickLists] OFF 