# ListUnsubscribeRecipientProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EmailAddress** | **String** |  | 
**DomainId** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$ListUnsubscribeRecipientProjection = Initialize-maislurp-client-powershellListUnsubscribeRecipientProjection  -EmailAddress null `
 -DomainId null `
 -CreatedAt null `
 -Id null
```

- Convert the resource to JSON
```powershell
$ListUnsubscribeRecipientProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

