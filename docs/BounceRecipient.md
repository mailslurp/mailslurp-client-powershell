# BounceRecipient
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**Recipient** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | [optional] 
**UpdatedAt** | **System.DateTime** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BounceRecipient = Initialize-maislurp-client-powershellBounceRecipient  -Id null `
 -UserId null `
 -Recipient null `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$BounceRecipient | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

