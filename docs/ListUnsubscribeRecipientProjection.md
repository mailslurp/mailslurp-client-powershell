# ListUnsubscribeRecipientProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DomainId** | **String** |  | [optional] 
**EmailAddress** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ListUnsubscribeRecipientProjection = Initialize-maislurp-client-powershellListUnsubscribeRecipientProjection  -DomainId null `
 -EmailAddress null `
 -CreatedAt null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ListUnsubscribeRecipientProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

