# CreatePostmasterConnectionOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RedirectBase** | **String** |  | [optional] 
**RedirectUri** | **String** |  | [optional] 
**EmailAddress** | **String** |  | [optional] 
**State** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePostmasterConnectionOptions = Initialize-maislurp-client-powershellCreatePostmasterConnectionOptions  -RedirectBase null `
 -RedirectUri null `
 -EmailAddress null `
 -State null
```

- Convert the resource to JSON
```powershell
$CreatePostmasterConnectionOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

