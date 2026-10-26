# ListUnsubscribeRecipientProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**CreatedAt** | **System.DateTime** |  | 
**EmailAddress** | **String** |  | 
**DomainId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ListUnsubscribeRecipientProjection = Initialize-maislurp-client-powershellListUnsubscribeRecipientProjection  -Id null `
 -CreatedAt null `
 -EmailAddress null `
 -DomainId null
```

- Convert the resource to JSON
```powershell
$ListUnsubscribeRecipientProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

