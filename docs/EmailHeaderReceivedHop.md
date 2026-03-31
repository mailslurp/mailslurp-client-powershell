# EmailHeaderReceivedHop
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFrom** | **String** |  | [optional] 
**By** | **String** |  | [optional] 
**WithValue** | **String** |  | [optional] 
**Timestamp** | **String** |  | [optional] 
**DelayMs** | **Int64** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailHeaderReceivedHop = Initialize-maislurp-client-powershellEmailHeaderReceivedHop  -VarFrom null `
 -By null `
 -WithValue null `
 -Timestamp null `
 -DelayMs null
```

- Convert the resource to JSON
```powershell
$EmailHeaderReceivedHop | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

