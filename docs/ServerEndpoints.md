# ServerEndpoints
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** |  | 
**Port** | **Int32** |  | 
**Tls** | **Boolean** |  | 
**AltPorts** | **Int32[]** |  | 

## Examples

- Prepare the resource
```powershell
$ServerEndpoints = Initialize-maislurp-client-powershellServerEndpoints  -VarHost null `
 -Port null `
 -Tls null `
 -AltPorts null
```

- Convert the resource to JSON
```powershell
$ServerEndpoints | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

