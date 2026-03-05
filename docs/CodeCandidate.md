# CodeCandidate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Code** | **String** | Extracted code value | 
**Confidence** | **Double** | Relative confidence score from 0 to 1 | 
**Method** | **String** | Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true. | 
**Source** | **String** | Source fragment used for extraction, for example RAW_TEXT_PART or SMS_BODY | 
**Context** | **String** | Nearby text context useful for debugging extraction decisions | [optional] 

## Examples

- Prepare the resource
```powershell
$CodeCandidate = Initialize-maislurp-client-powershellCodeCandidate  -Code null `
 -Confidence null `
 -Method null `
 -Source null `
 -Context null
```

- Convert the resource to JSON
```powershell
$CodeCandidate | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

