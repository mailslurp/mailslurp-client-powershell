# EntityAutomationItemProjection
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AutomationType** | **String** |  | 
**Name** | **String** |  | [optional] 
**Id** | **String** |  | 
**InboxId** | **String** |  | [optional] 
**Action** | **String** |  | [optional] 
**PhoneId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EntityAutomationItemProjection = Initialize-maislurp-client-powershellEntityAutomationItemProjection  -AutomationType null `
 -Name null `
 -Id null `
 -InboxId null `
 -Action null `
 -PhoneId null
```

- Convert the resource to JSON
```powershell
$EntityAutomationItemProjection | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

