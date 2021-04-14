# DescribeMailServerDomainResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Domain** | **String** |  | 
**Message** | **String** |  | [optional] 
**MxRecords** | [**NameServerRecord[]**](NameServerRecord) |  | 

## Examples

- Prepare the resource
```powershell
$DescribeMailServerDomainResult = Initialize-maislurp-client-powershellDescribeMailServerDomainResult  -Domain null `
 -Message null `
 -MxRecords null
```

- Convert the resource to JSON
```powershell
$DescribeMailServerDomainResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

