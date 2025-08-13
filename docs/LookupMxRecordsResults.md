# LookupMxRecordsResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Records** | [**DNSLookupResult[]**](DNSLookupResult) |  | 
**Errors** | **String[]** |  | 
**Warnings** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$LookupMxRecordsResults = Initialize-maislurp-client-powershellLookupMxRecordsResults  -Records null `
 -Errors null `
 -Warnings null
```

- Convert the resource to JSON
```powershell
$LookupMxRecordsResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

