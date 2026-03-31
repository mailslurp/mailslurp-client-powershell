# EntityAutomationItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**PhoneId** | **String** |  | [optional] 
**Action** | **String** |  | [optional] 
**AutomationType** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EntityAutomationItemProjection = Initialize-maislurp-client-powershellEntityAutomationItemProjection  -Name null `
 -Id null `
 -InboxId null `
 -PhoneId null `
 -Action null `
 -AutomationType null
```

- Convert the resource to JSON
```powershell
$EntityAutomationItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

