# AccountBounceBlockDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsFrozen** | **Boolean** |  | 
**IsSendingBlocked** | **Boolean** |  | 
**BounceCount** | **Int64** |  | 
**BounceCountToday** | **Int64** |  | 
**MaximumDailyBounces** | **Int64** |  | 
**MaximumAccountBounces** | **Int64** |  | 

## Examples

- Prepare the resource
```powershell
$AccountBounceBlockDto = Initialize-maislurp-client-powershellAccountBounceBlockDto  -IsFrozen null `
 -IsSendingBlocked null `
 -BounceCount null `
 -BounceCountToday null `
 -MaximumDailyBounces null `
 -MaximumAccountBounces null
```

- Convert the resource to JSON
```powershell
$AccountBounceBlockDto | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

