# EntityEventItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EventType** | **String** |  | 
**Severity** | **String** |  | 
**Id** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**PhoneId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EntityEventItemProjection = Initialize-maislurp-client-powershellEntityEventItemProjection  -EventType null `
 -Severity null `
 -Id null `
 -InboxId null `
 -PhoneId null
```

- Convert the resource to JSON
```powershell
$EntityEventItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

