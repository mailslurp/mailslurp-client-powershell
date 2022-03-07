# BouncedRecipientDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**Recipient** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$BouncedRecipientDto = Initialize-maislurp-client-powershellBouncedRecipientDto  -Id null `
 -UserId null `
 -Recipient null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$BouncedRecipientDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

