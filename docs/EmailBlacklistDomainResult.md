# EmailBlacklistDomainResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** |  | 
**Source** | **String** |  | 
**Listings** | [**EmailBlacklistListingResult[]**](EmailBlacklistListingResult) |  | 

## Examples

- Prepare the resource
```powershell
$EmailBlacklistDomainResult = Initialize-maislurp-client-powershellEmailBlacklistDomainResult  -Domain null `
 -Source null `
 -Listings null
```

- Convert the resource to JSON
```powershell
$EmailBlacklistDomainResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

