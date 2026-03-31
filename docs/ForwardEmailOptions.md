# ForwardEmailOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**To** | **String[]** | To recipients for forwarded email | 
**Subject** | **String** | Subject for forwarded email | [optional] 
**Cc** | **String[]** | Optional cc recipients | [optional] 
**Bcc** | **String[]** | Optional bcc recipients | [optional] 
**VarFrom** | **String** | Optional from override | [optional] 
**UseInboxName** | **Boolean** | Optionally use inbox name as display name for sender email address | [optional] 
**FilterBouncedRecipients** | **Boolean** | Filter recipients to remove any bounced recipients from to, bcc, and cc before sending | [optional] 

## Examples

- Prepare the resource
```powershell
$ForwardEmailOptions = Initialize-maislurp-client-powershellForwardEmailOptions  -To null `
 -Subject null `
 -Cc null `
 -Bcc null `
 -VarFrom null `
 -UseInboxName null `
 -FilterBouncedRecipients null
```

- Convert the resource to JSON
```powershell
$ForwardEmailOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

