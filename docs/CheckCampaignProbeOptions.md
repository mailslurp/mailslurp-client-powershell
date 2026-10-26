# CheckCampaignProbeOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FromAddress** | **String** | Optional sender email address | [optional] 
**Subject** | **String** | Optional message subject | [optional] 
**Recipient** | **String** | Optional recipient email address for context | [optional] 
**MessageId** | **String** | Optional caller supplied message id | [optional] 
**HtmlBody** | **String** | HTML body content to analyze | [optional] 
**TextBody** | **String** | Text body content to analyze when HTML is absent | [optional] 
**CaptchaToken** | **String** | Optional captcha token when captcha protection is enabled | [optional] 

## Examples

- Prepare the resource
```powershell
$CheckCampaignProbeOptions = Initialize-maislurp-client-powershellCheckCampaignProbeOptions  -FromAddress sender@example.com `
 -Subject Launch update `
 -Recipient null `
 -MessageId null `
 -HtmlBody null `
 -TextBody null `
 -CaptchaToken null
```

- Convert the resource to JSON
```powershell
$CheckCampaignProbeOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

