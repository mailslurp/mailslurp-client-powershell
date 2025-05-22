# StructuredOutputSchema
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AnyOf** | [**StructuredOutputSchema[]**](StructuredOutputSchema) |  | [optional] 
**Default** | [**SystemCollectionsHashtable**]() |  | [optional] 
**Description** | **String** |  | [optional] 
**Enum** | **String[]** |  | [optional] 
**Example** | [**SystemCollectionsHashtable**]() |  | [optional] 
**Format** | **String** |  | [optional] 
**Items** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**MaxItems** | **Int64** |  | [optional] 
**MinItems** | **Int64** |  | [optional] 
**MaxLength** | **Int64** |  | [optional] 
**MinLength** | **Int64** |  | [optional] 
**Pattern** | **String** |  | [optional] 
**Properties** | [**System.Collections.Hashtable**](StructuredOutputSchema) |  | [optional] 
**PropertyOrdering** | **String[]** |  | [optional] 
**Required** | **String[]** |  | [optional] 
**MaxProperties** | **Int64** |  | [optional] 
**MinProperties** | **Int64** |  | [optional] 
**Maximum** | **Decimal** |  | [optional] 
**Minimum** | **Decimal** |  | [optional] 
**Nullable** | **Boolean** |  | [optional] 
**Title** | **String** |  | [optional] 
**Type** | **String** | Primitive JSON schema types with a fallback CUSTOM for unknown values. | [optional] 

## Examples

- Prepare the resource
```powershell
$StructuredOutputSchema = Initialize-maislurp-client-powershellStructuredOutputSchema  -AnyOf null `
 -Default null `
 -Description null `
 -Enum null `
 -Example null `
 -Format null `
 -Items null `
 -MaxItems null `
 -MinItems null `
 -MaxLength null `
 -MinLength null `
 -Pattern null `
 -Properties null `
 -PropertyOrdering null `
 -Required null `
 -MaxProperties null `
 -MinProperties null `
 -Maximum null `
 -Minimum null `
 -Nullable null `
 -Title null `
 -Type null
```

- Convert the resource to JSON
```powershell
$StructuredOutputSchema | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

