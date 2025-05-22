# ListUnsubscribeRecipientProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**DomainId** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ListUnsubscribeRecipientProjection = Initialize-maislurp-client-powershellListUnsubscribeRecipientProjection  -EmailAddress null `
 -CreatedAt null `
 -DomainId null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ListUnsubscribeRecipientProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

