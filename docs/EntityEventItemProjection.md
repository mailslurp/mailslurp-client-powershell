# EntityEventItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Severity** | **String** |  | 
**EventType** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**PhoneId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EntityEventItemProjection = Initialize-maislurp-client-powershellEntityEventItemProjection  -Id null `
 -Severity null `
 -EventType null `
 -InboxId null `
 -PhoneId null
```

- Convert the resource to JSON
```powershell
$EntityEventItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

