# EmailIntelligenceOptions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Targets** | **String[]** | Email addresses or domains to score. | 
**Page** | **Int32** | Zero-based page index for processing a subset of the target list. | [optional] 
**Size** | **Int32** | Page size for processing a subset of the target list. | [optional] 
**IgnoreCache** | **Boolean** | Ignore cached intelligence values and force recomputation. | [optional] 
**IncludeEmailValidation** | **Boolean** | Also run mailbox safety verification using the existing verification client for email inputs. | [optional] 
**Tests** | [**EmailIntelligenceTestsOptions**](EmailIntelligenceTestsOptions) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EmailIntelligenceOptions = Initialize-maislurp-client-powershellEmailIntelligenceOptions  -Targets null `
 -Page null `
 -Size null `
 -IgnoreCache null `
 -IncludeEmailValidation null `
 -Tests null
```

- Convert the resource to JSON
```powershell
$EmailIntelligenceOptions | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

