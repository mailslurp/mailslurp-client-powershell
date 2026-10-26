# LookupSpfDomainOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarHost** | **String** | Root domain to inspect for SPF | 

## Examples

- Prepare the resource
```powershell
$LookupSpfDomainOptions = Initialize-maislurp-client-powershellLookupSpfDomainOptions  -VarHost example.com
```

- Convert the resource to JSON
```powershell
$LookupSpfDomainOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

