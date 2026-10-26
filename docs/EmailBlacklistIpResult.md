# EmailBlacklistIpResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IpAddress** | **String** |  | 
**Source** | **String** |  | 
**Listings** | [**EmailBlacklistListingResult[]**](EmailBlacklistListingResult) |  | 

## Examples

- Prepare the resource
```powershell
$EmailBlacklistIpResult = Initialize-maislurp-client-powershellEmailBlacklistIpResult  -IpAddress null `
 -Source null `
 -Listings null
```

- Convert the resource to JSON
```powershell
$EmailBlacklistIpResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

