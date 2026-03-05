# EmailSignature
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | **String** | Extracted signature text | 
**Source** | **String** | Source used for extraction. Examples: RAW_TEXT_PART, RAW_HTML_SELECTOR | 
**Marker** | **String** | Matched marker or selector that identified the signature | [optional] 
**DetectionType** | **String** | Detection strategy used. Examples: DELIMITER, MOBILE_FOOTER, VALEDICTION | 

## Examples

- Prepare the resource
```powershell
$EmailSignature = Initialize-maislurp-client-powershellEmailSignature  -Body null `
 -Source null `
 -Marker null `
 -DetectionType null
```

- Convert the resource to JSON
```powershell
$EmailSignature | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

