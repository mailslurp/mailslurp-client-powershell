# FakeEmailDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**EmailAddress** | **String** |  | 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**Subject** | **String** |  | [optional] 
**Preview** | **String** |  | [optional] 
**Body** | **String** |  | 
**Seen** | **Boolean** |  | 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$FakeEmailDto = Initialize-maislurp-client-powershellFakeEmailDto  -Id null `
 -EmailAddress null `
 -VarSender null `
 -Recipients null `
 -Subject null `
 -Preview null `
 -Body null `
 -Seen null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$FakeEmailDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

