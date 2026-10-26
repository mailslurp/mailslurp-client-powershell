# LookupDkimDomainOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** | Domain to inspect for DKIM | 
**Selector** | **String** | Optional selector. If omitted, common selectors are probed. | [optional] 

## Examples

- Prepare the resource
```powershell
$LookupDkimDomainOptions = Initialize-maislurp-client-powershellLookupDkimDomainOptions  -VarHost example.com `
 -Selector selector1
```

- Convert the resource to JSON
```powershell
$LookupDkimDomainOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

