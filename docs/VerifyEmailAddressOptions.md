# VerifyEmailAddressOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MailServerDomain** | **String** |  | [optional] 
**EmailAddress** | **String** |  | 
**SenderEmailAddress** | **String** |  | [optional] 
**Port** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$VerifyEmailAddressOptions = Initialize-maislurp-client-powershellVerifyEmailAddressOptions  -MailServerDomain null `
 -EmailAddress null `
 -SenderEmailAddress null `
 -Port null
```

- Convert the resource to JSON
```powershell
$VerifyEmailAddressOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

