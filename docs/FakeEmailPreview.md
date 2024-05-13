# FakeEmailPreview
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**EmailAddress** | **String** |  | 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**Subject** | **String** |  | [optional] 
**Preview** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Seen** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$FakeEmailPreview = Initialize-maislurp-client-powershellFakeEmailPreview  -Id null `
 -EmailAddress null `
 -VarSender null `
 -Recipients null `
 -Subject null `
 -Preview null `
 -CreatedAt null `
 -Seen null
```

- Convert the resource to JSON
```powershell
$FakeEmailPreview | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

