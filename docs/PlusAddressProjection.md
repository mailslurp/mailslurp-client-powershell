# PlusAddressProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxId** | **String** |  | 
**UserId** | **String** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**CreatedAt** | **System.DateTime** |  | 
**PlusAddress** | **String** |  | 
**FullAddress** | **String** |  | 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$PlusAddressProjection = Initialize-maislurp-client-powershellPlusAddressProjection  -InboxId null `
 -UserId null `
 -UpdatedAt null `
 -CreatedAt null `
 -PlusAddress null `
 -FullAddress null `
 -Id null
```

- Convert the resource to JSON
```powershell
$PlusAddressProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

