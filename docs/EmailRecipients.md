# EmailRecipients
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**To** | [**Recipient[]**](Recipient) |  | [optional] 
**Cc** | [**Recipient[]**](Recipient) |  | [optional] 
**Bcc** | [**Recipient[]**](Recipient) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailRecipients = Initialize-maislurp-client-powershellEmailRecipients  -To null `
 -Cc null `
 -Bcc null
```

- Convert the resource to JSON
```powershell
$EmailRecipients | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

