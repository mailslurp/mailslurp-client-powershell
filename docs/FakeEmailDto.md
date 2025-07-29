# FakeEmailDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**EmailAddress** | **String** |  | 
**VarSender** | [**ModelSender**](ModelSender) |  | [optional] 
**Recipients** | [**EmailRecipients**](EmailRecipients) |  | [optional] 
**AttachmentNames** | **String[]** |  | 
**Subject** | **String** |  | [optional] 
**Preview** | **String** |  | [optional] 
**Body** | **String** | use read content endpoints instead | 
**Seen** | **Boolean** |  | 
**CreatedAt** | **System.DateTime** |  | 
**ContentType** | **String** |  | 
**BodyUrl** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$FakeEmailDto = Initialize-maislurp-client-powershellFakeEmailDto  -Id null `
 -EmailAddress null `
 -VarSender null `
 -Recipients null `
 -AttachmentNames null `
 -Subject null `
 -Preview null `
 -Body null `
 -Seen null `
 -CreatedAt null `
 -ContentType null `
 -BodyUrl null
```

- Convert the resource to JSON
```powershell
$FakeEmailDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

