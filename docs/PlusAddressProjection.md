# PlusAddressProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**UserId** | **String** |  | 
**InboxId** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**PlusAddress** | **String** |  | 
**FullAddress** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PlusAddressProjection = Initialize-maislurp-client-powershellPlusAddressProjection  -Id null `
 -UserId null `
 -InboxId null `
 -CreatedAt null `
 -UpdatedAt null `
 -PlusAddress null `
 -FullAddress null
```

- Convert the resource to JSON
```powershell
$PlusAddressProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

