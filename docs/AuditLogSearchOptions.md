# AuditLogSearchOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Since** | **System.DateTime** |  | [optional] 
**Before** | **System.DateTime** |  | [optional] 
**Action** | **String** |  | [optional] 
**UserId** | **String** |  | [optional] 
**ActorUserId** | **String** |  | [optional] 
**TargetUserId** | **String** |  | [optional] 
**ResourceType** | **String** |  | [optional] 
**ResourceId** | **String** |  | [optional] 
**Outcome** | **String** |  | [optional] 
**RequestId** | **String** |  | [optional] 
**IpAddress** | **String** |  | [optional] 
**EventId** | **String** |  | [optional] 
**PageSize** | **Int32** |  | [optional] 
**Cursor** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuditLogSearchOptions = Initialize-maislurp-client-powershellAuditLogSearchOptions  -Since null `
 -Before null `
 -Action null `
 -UserId null `
 -ActorUserId null `
 -TargetUserId null `
 -ResourceType null `
 -ResourceId null `
 -Outcome null `
 -RequestId null `
 -IpAddress null `
 -EventId null `
 -PageSize null `
 -Cursor null
```

- Convert the resource to JSON
```powershell
$AuditLogSearchOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

