# PlusAddressProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 
**InboxId** | **String** |  | 
**PlusAddress** | **String** |  | 
**FullAddress** | **String** |  | 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PlusAddressProjection = Initialize-maislurp-client-powershellPlusAddressProjection  -CreatedAt null `
 -UpdatedAt null `
 -UserId null `
 -InboxId null `
 -PlusAddress null `
 -FullAddress null `
 -Id null
```

- Convert the resource to JSON
```powershell
$PlusAddressProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

