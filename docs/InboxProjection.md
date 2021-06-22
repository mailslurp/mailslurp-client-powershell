# InboxProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** |  | 
**EmailAddress** | **String** |  | [optional] 
**Favourite** | **Boolean** |  | 
**Id** | **String** |  | 
**InboxType** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Tags** | **String[]** |  | [optional] 
**TeamAccess** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$InboxProjection = Initialize-maislurp-client-powershellInboxProjection  -CreatedAt null `
 -EmailAddress null `
 -Favourite null `
 -Id null `
 -InboxType null `
 -Name null `
 -Tags null `
 -TeamAccess null
```

- Convert the resource to JSON
```powershell
$InboxProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

