# FlushExpiredInboxesResult
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxIds** | **String[]** |  | 
**ExpireBefore** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$FlushExpiredInboxesResult = Initialize-maislurp-client-powershellFlushExpiredInboxesResult  -InboxIds null `
 -ExpireBefore null
```

- Convert the resource to JSON
```powershell
$FlushExpiredInboxesResult | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

