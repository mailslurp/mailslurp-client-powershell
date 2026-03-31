# CheckEmailBlacklistResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** |  | [optional] 
**RequestedIpAddress** | **String** |  | [optional] 
**RequestedMxHost** | **String** |  | [optional] 
**Status** | **String** |  | 
**Listed** | **Boolean** |  | 
**CheckedIpAddresses** | [**EmailBlacklistIpResult[]**](EmailBlacklistIpResult) |  | 
**CheckedZoneCount** | **Int32** |  | 
**TotalListings** | **Int32** |  | 
**Warnings** | **String[]** |  | 
**Errors** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$CheckEmailBlacklistResults = Initialize-maislurp-client-powershellCheckEmailBlacklistResults  -Domain null `
 -RequestedIpAddress null `
 -RequestedMxHost null `
 -Status null `
 -Listed null `
 -CheckedIpAddresses null `
 -CheckedZoneCount null `
 -TotalListings null `
 -Warnings null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$CheckEmailBlacklistResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

