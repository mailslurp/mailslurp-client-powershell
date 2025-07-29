# EmailRecipientsProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**To** | [**RecipientProjection[]**](RecipientProjection) |  | [optional] 
**Cc** | [**RecipientProjection[]**](RecipientProjection) |  | [optional] 
**Bcc** | [**RecipientProjection[]**](RecipientProjection) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailRecipientsProjection = Initialize-maislurp-client-powershellEmailRecipientsProjection  -To null `
 -Cc null `
 -Bcc null
```

- Convert the resource to JSON
```powershell
$EmailRecipientsProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

