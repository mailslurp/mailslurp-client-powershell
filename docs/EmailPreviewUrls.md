# EmailPreviewUrls
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RawSmtpMessageUrl** | **String** |  | 
**PlainHtmlBodyUrl** | **String** |  | 
**Origin** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EmailPreviewUrls = Initialize-maislurp-client-powershellEmailPreviewUrls  -RawSmtpMessageUrl null `
 -PlainHtmlBodyUrl null `
 -Origin null
```

- Convert the resource to JSON
```powershell
$EmailPreviewUrls | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

