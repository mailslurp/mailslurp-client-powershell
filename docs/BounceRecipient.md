# BounceRecipient
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | [optional] 
**Recipient** | **String** |  | 
**UpdatedAt** | **System.DateTime** |  | 
**UserId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$BounceRecipient = Initialize-maislurp-client-powershellBounceRecipient  -CreatedAt null `
 -Id null `
 -Recipient null `
 -UpdatedAt null `
 -UserId null
```

- Convert the resource to JSON
```powershell
$BounceRecipient | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

