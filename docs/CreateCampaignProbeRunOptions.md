# CreateCampaignProbeRunOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FromAddress** | **String** | Sender email address | [optional] 
**Subject** | **String** | Message subject | [optional] 
**Recipient** | **String** | Recipient email address for context | [optional] 
**MessageId** | **String** | Caller supplied message id for dedupe/trace | [optional] 
**HtmlBody** | **String** | HTML body content to analyze | [optional] 
**TextBody** | **String** | Text body content to analyze when HTML is absent | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateCampaignProbeRunOptions = Initialize-maislurp-client-powershellCreateCampaignProbeRunOptions  -FromAddress sender@example.com `
 -Subject Launch update `
 -Recipient null `
 -MessageId null `
 -HtmlBody null `
 -TextBody null
```

- Convert the resource to JSON
```powershell
$CreateCampaignProbeRunOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

