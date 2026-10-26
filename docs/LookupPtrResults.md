# LookupPtrResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ip** | **String** |  | 
**PtrHostnames** | **String[]** |  | 
**ForwardConfirmed** | **Boolean** |  | 
**ForwardARecords** | **String[]** |  | 
**ForwardAaaaRecords** | **String[]** |  | 
**Warnings** | **String[]** |  | 
**Errors** | **String[]** |  | 

## Examples

- Prepare the resource
```powershell
$LookupPtrResults = Initialize-maislurp-client-powershellLookupPtrResults  -Ip null `
 -PtrHostnames null `
 -ForwardConfirmed null `
 -ForwardARecords null `
 -ForwardAaaaRecords null `
 -Warnings null `
 -Errors null
```

- Convert the resource to JSON
```powershell
$LookupPtrResults | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

