# StructuredOutputSchema
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AnyOf** | [**StructuredOutputSchema[]**](StructuredOutputSchema) |  | [optional] 
**Default** | [**SystemCollectionsHashtable**]() |  | [optional] 
**Description** | **String** | Provide a description of the schema to help the AI understand the schema. | [optional] 
**EnumValues** | **String[]** | When using type string and format enum pass a collection of enum values here. | [optional] 
**Example** | [**SystemCollectionsHashtable**]() |  | [optional] 
**Format** | **String** | Format for string types. Can be null, date-time or enum. | [optional] 
**Items** | [**StructuredOutputSchema**](StructuredOutputSchema) |  | [optional] 
**MaxItems** | **Int64** |  | [optional] 
**MinItems** | **Int64** |  | [optional] 
**MaxLength** | **Int64** |  | [optional] 
**MinLength** | **Int64** |  | [optional] 
**Pattern** | **String** | Regex pattern for STRING type | [optional] 
**Properties** | [**System.Collections.Hashtable**](StructuredOutputSchema) | Properties of an OBJECT schema. These are key value pairs where the key is the property name and the value is the schema for that property. | [optional] 
**PropertyOrdering** | **String[]** | Pass an array of property names to specify the order of properties in the generated JSON object if required. | [optional] 
**Required** | **String[]** | Is field required | [optional] 
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
 -EnumValues null `
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

