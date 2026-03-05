# DeliverabilitySelectorOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Selection mode | 
**Pattern** | **String** | Wildcard pattern for PATTERN selection. Supports &#39;*&#39; and &#39;?&#39; wildcards. If no wildcard is present the value is treated as a case-insensitive contains match. | [optional] 
**PhoneCountry** | **String** | Optional phone-country filter for PHONE scope selection (e.g. ALL phones in US). Must be null for INBOX scope. | [optional] 
**EntityIds** | **String[]** | Explicit entity IDs for EXPLICIT selection | [optional] 
**ExcludeEntityIds** | **String[]** | Optional entity IDs to exclude from the resolved selection (applies after ALL/PATTERN/EXPLICIT selection). | [optional] 

## Examples

- Prepare the resource
```powershell
$DeliverabilitySelectorOptions = Initialize-maislurp-client-powershellDeliverabilitySelectorOptions  -Type PATTERN `
 -Pattern loadtest-* `
 -PhoneCountry US `
 -EntityIds [&quot;11111111-1111-1111-1111-111111111111&quot;] `
 -ExcludeEntityIds [&quot;22222222-2222-2222-2222-222222222222&quot;]
```

- Convert the resource to JSON
```powershell
$DeliverabilitySelectorOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

