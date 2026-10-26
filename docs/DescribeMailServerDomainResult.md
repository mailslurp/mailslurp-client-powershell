# DescribeMailServerDomainResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MxRecords** | [**NameServerRecord[]**](NameServerRecord) |  | 
**Domain** | **String** |  | 
**Message** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DescribeMailServerDomainResult = Initialize-maislurp-client-powershellDescribeMailServerDomainResult  -MxRecords null `
 -Domain null `
 -Message null
```

- Convert the resource to JSON
```powershell
$DescribeMailServerDomainResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

