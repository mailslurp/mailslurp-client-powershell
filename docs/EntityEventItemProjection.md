# EntityEventItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EventType** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**PhoneId** | **String** |  | [optional] 
**Id** | **String** |  | 
**Severity** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EntityEventItemProjection = Initialize-maislurp-client-powershellEntityEventItemProjection  -EventType null `
 -InboxId null `
 -PhoneId null `
 -Id null `
 -Severity null
```

- Convert the resource to JSON
```powershell
$EntityEventItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

