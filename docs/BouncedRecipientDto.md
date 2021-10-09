# BouncedRecipientDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | [optional] 
**Recipient** | **String** |  | 
**UserId** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$BouncedRecipientDto = Initialize-maislurp-client-powershellBouncedRecipientDto  -CreatedAt null `
 -Id null `
 -Recipient null `
 -UserId null
```

- Convert the resource to JSON
```powershell
$BouncedRecipientDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

