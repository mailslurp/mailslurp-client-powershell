# AuditLogEventDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TenantId** | **String** |  | 
**Dt** | **String** |  | [optional] 
**EventId** | **String** |  | 
**EventTs** | **System.DateTime** |  | 
**Action** | **String** |  | 
**UserId** | **String** |  | [optional] 
**ActorUserId** | **String** |  | [optional] 
**TargetUserId** | **String** |  | [optional] 
**ResourceType** | **String** |  | [optional] 
**ResourceId** | **String** |  | [optional] 
**Outcome** | **String** |  | [optional] 
**RequestId** | **String** |  | [optional] 
**IpAddress** | **String** |  | [optional] 
**MetadataJson** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AuditLogEventDto = Initialize-maislurp-client-powershellAuditLogEventDto  -TenantId null `
 -Dt null `
 -EventId null `
 -EventTs null `
 -Action null `
 -UserId null `
 -ActorUserId null `
 -TargetUserId null `
 -ResourceType null `
 -ResourceId null `
 -Outcome null `
 -RequestId null `
 -IpAddress null `
 -MetadataJson null
```

- Convert the resource to JSON
```powershell
$AuditLogEventDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

