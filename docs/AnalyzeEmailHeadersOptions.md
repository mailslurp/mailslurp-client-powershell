# AnalyzeEmailHeadersOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RawHeaders** | **String** | Raw RFC 5322 email headers to analyze | 

## Examples

- Prepare the resource
```powershell
$AnalyzeEmailHeadersOptions = Initialize-maislurp-client-powershellAnalyzeEmailHeadersOptions  -RawHeaders null
```

- Convert the resource to JSON
```powershell
$AnalyzeEmailHeadersOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

