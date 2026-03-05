# EntityEventItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PhoneId** | **String** |  | [optional] 
**InboxId** | **String** |  | [optional] 
**EventType** | **String** |  | 
**Id** | **String** |  | 
**Severity** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EntityEventItemProjection = Initialize-maislurp-client-powershellEntityEventItemProjection  -PhoneId null `
 -InboxId null `
 -EventType null `
 -Id null `
 -Severity null
```

- Convert the resource to JSON
```powershell
$EntityEventItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

