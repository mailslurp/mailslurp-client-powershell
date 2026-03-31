# BulkSendEmailOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxIds** | **String[]** | Inboxes to send the email from | 
**SendEmailOptions** | [**SendEmailOptions**](SendEmailOptions) |  | 

## Examples

- Prepare the resource
```powershell
$BulkSendEmailOptions = Initialize-maislurp-client-powershellBulkSendEmailOptions  -InboxIds null `
 -SendEmailOptions null
```

- Convert the resource to JSON
```powershell
$BulkSendEmailOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

