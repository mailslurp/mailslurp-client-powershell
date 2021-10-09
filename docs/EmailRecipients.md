# EmailRecipients
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Bcc** | [**Recipient[]**](Recipient) |  | [optional] 
**Cc** | [**Recipient[]**](Recipient) |  | [optional] 
**To** | [**Recipient[]**](Recipient) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailRecipients = Initialize-maislurp-client-powershellEmailRecipients  -Bcc null `
 -Cc null `
 -To null
```

- Convert the resource to JSON
```powershell
$EmailRecipients | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

