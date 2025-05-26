# EntityAutomationItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InboxId** | **String** |  | [optional] 
**PhoneId** | **String** |  | [optional] 
**Action** | **String** |  | [optional] 
**AutomationType** | **String** |  | 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$EntityAutomationItemProjection = Initialize-maislurp-client-powershellEntityAutomationItemProjection  -InboxId null `
 -PhoneId null `
 -Action null `
 -AutomationType null `
 -Name null `
 -Id null
```

- Convert the resource to JSON
```powershell
$EntityAutomationItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

