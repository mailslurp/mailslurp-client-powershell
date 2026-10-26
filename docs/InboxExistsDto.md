# InboxExistsDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Exists** | **Boolean** |  | 
**SoftBounce** | **Boolean** | Inbox is full or simulating a soft bounce via inbox replier or rulesets | [optional] 
**HardBounce** | **Boolean** | Inbox is blocking receiving emails or simulating a hard bounce via inbox replier or rulesets | [optional] 

## Examples

- Prepare the resource
```powershell
$InboxExistsDto = Initialize-maislurp-client-powershellInboxExistsDto  -Exists null `
 -SoftBounce null `
 -HardBounce null
```

- Convert the resource to JSON
```powershell
$InboxExistsDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

