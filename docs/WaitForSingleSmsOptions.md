# WaitForSingleSmsOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PhoneNumberId** | **String** |  | 
**Timeout** | **Int64** |  | 
**UnreadOnly** | **Boolean** |  | [optional] 
**Before** | **System.DateTime** |  | [optional] 
**Since** | **System.DateTime** |  | [optional] 
**SortDirection** | **String** |  | [optional] 
**Delay** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$WaitForSingleSmsOptions = Initialize-maislurp-client-powershellWaitForSingleSmsOptions  -PhoneNumberId null `
 -Timeout null `
 -UnreadOnly null `
 -Before null `
 -Since null `
 -SortDirection null `
 -Delay null
```

- Convert the resource to JSON
```powershell
$WaitForSingleSmsOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

