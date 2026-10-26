# CreatePublicSpamTestOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FromEmail** | **String** | Optional sender email address. If provided, MailSlurp will also derive senderDomain for compatibility with inbox placement service versions that still expect it. | [optional] 
**SenderDomain** | **String** | Optional sender domain. If omitted and fromEmail is provided, MailSlurp derives it automatically. | [optional] 
**RequestedSegment** | **String** | Requested seed cohort for the placement test. | 
**AddressFormat** | **String** | Address export format for the returned seed addresses. | 
**CaptchaToken** | **String** | Optional captcha token when captcha protection is enabled. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePublicSpamTestOptions = Initialize-maislurp-client-powershellCreatePublicSpamTestOptions  -FromEmail sender@example.com `
 -SenderDomain example.com `
 -RequestedSegment null `
 -AddressFormat null `
 -CaptchaToken null
```

- Convert the resource to JSON
```powershell
$CreatePublicSpamTestOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

