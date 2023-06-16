--DECLARE @pktype INT = NULL
--{Description}  
SET @pktype = {PK_PickListType}
DELETE PickLists WHERE PK_PickListType =  @pktype
DELETE PickListTypes WHERE PK_PickListType =  @pktype
INSERT INTO PickListTypes(PK_PickListType, [Description], UsageField)
SELECT @pktype, '{Description}', '{UsageField}' 

SET IDENTITY_INSERT [dbo].[PickLists] ON 
INSERT INTO PickLists(PK_PickList, PK_PickListType, DisplayValue, CodeValue, LastUpdated, SortPos, isActive) VALUES 
{picklists.sql} 
SET IDENTITY_INSERT [dbo].[PickLists] OFF 