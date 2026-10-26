# UserStorageInsightsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TopInboxes** | [**UserStorageInsightItemDto[]**](UserStorageInsightItemDto) |  | 
**TopDomains** | [**UserStorageInsightItemDto[]**](UserStorageInsightItemDto) |  | 
**GeneratedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$UserStorageInsightsDto = Initialize-maislurp-client-powershellUserStorageInsightsDto  -TopInboxes null `
 -TopDomains null `
 -GeneratedAt null
```

- Convert the resource to JSON
```powershell
$UserStorageInsightsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

