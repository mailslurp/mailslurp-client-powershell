# DomainRegionGroupsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DomainGroups** | [**DomainRegionGroup[]**](DomainRegionGroup) |  | 

## Examples

- Prepare the resource
```powershell
$DomainRegionGroupsDto = Initialize-maislurp-client-powershellDomainRegionGroupsDto  -DomainGroups null
```

- Convert the resource to JSON
```powershell
$DomainRegionGroupsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

