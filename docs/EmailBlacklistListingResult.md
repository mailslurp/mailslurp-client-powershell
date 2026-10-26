# EmailBlacklistListingResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Zone** | **String** |  | 
**Listed** | **Boolean** |  | 
**ResponseCodes** | **String[]** |  | 
**ResponseMessages** | **String[]** |  | 
**Status** | **String** |  | 
**ErrorMessage** | **String** |  | [optional] 
**Provider** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EmailBlacklistListingResult = Initialize-maislurp-client-powershellEmailBlacklistListingResult  -Zone null `
 -Listed null `
 -ResponseCodes null `
 -ResponseMessages null `
 -Status null `
 -ErrorMessage null `
 -Provider null
```

- Convert the resource to JSON
```powershell
$EmailBlacklistListingResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

