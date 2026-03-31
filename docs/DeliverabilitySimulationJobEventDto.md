# DeliverabilitySimulationJobEventDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**EventType** | **String** |  | 
**SendIndex** | **Int64** |  | [optional] 
**EntityId** | **String** |  | [optional] 
**TargetLabel** | **String** |  | [optional] 
**ExpectationName** | **String** |  | [optional] 
**Attempt** | **Int32** |  | [optional] 
**Message** | **String** |  | [optional] 
**VarError** | **String** |  | [optional] 
**CreatedAt** | **System.DateTime** |  | 

## Examples

- Prepare the resource
```powershell
$DeliverabilitySimulationJobEventDto = Initialize-maislurp-client-powershellDeliverabilitySimulationJobEventDto  -Id null `
 -EventType null `
 -SendIndex null `
 -EntityId null `
 -TargetLabel null `
 -ExpectationName null `
 -Attempt null `
 -Message null `
 -VarError null `
 -CreatedAt null
```

- Convert the resource to JSON
```powershell
$DeliverabilitySimulationJobEventDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

