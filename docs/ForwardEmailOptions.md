# ForwardEmailOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Bcc** | **String[]** | Optional bcc recipients | [optional] 
**Cc** | **String[]** | Optional cc recipients | [optional] 
**VarFrom** | **String** | Optional from override | [optional] 
**Subject** | **String** | Subject for forwarded email | [optional] 
**To** | **String[]** | To recipients for forwarded email | [optional] 
**UseInboxName** | **Boolean** | Optionally use inbox name as display name for sender email address | [optional] 

## Examples

- Prepare the resource
```powershell
$ForwardEmailOptions = Initialize-maislurp-client-powershellForwardEmailOptions  -Bcc null `
 -Cc null `
 -VarFrom null `
 -Subject null `
 -To null `
 -UseInboxName null
```

- Convert the resource to JSON
```powershell
$ForwardEmailOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

