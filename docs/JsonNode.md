# JsonNode
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**String** | **Boolean** |  | [optional] 
**Object** | **Boolean** |  | [optional] 
**Float** | **Boolean** |  | [optional] 
**Empty** | **Boolean** |  | [optional] 
**Array** | **Boolean** |  | [optional] 
**VarNull** | **Boolean** |  | [optional] 
**Container** | **Boolean** |  | [optional] 
**Textual** | **Boolean** |  | [optional] 
**MissingNode** | **Boolean** |  | [optional] 
**ValueNode** | **Boolean** |  | [optional] 
**NodeType** | **String** |  | [optional] 
**Pojo** | **Boolean** |  | [optional] 
**Number** | **Boolean** |  | [optional] 
**IntegralNumber** | **Boolean** |  | [optional] 
**FloatingPointNumber** | **Boolean** |  | [optional] 
**Short** | **Boolean** |  | [optional] 
**Int** | **Boolean** |  | [optional] 
**Long** | **Boolean** |  | [optional] 
**Double** | **Boolean** |  | [optional] 
**BigDecimal** | **Boolean** |  | [optional] 
**BigInteger** | **Boolean** |  | [optional] 
**Boolean** | **Boolean** |  | [optional] 
**Binary** | **Boolean** |  | [optional] 
**EmbeddedValue** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$JsonNode = Initialize-maislurp-client-powershellJsonNode  -String null `
 -Object null `
 -Float null `
 -Empty null `
 -Array null `
 -VarNull null `
 -Container null `
 -Textual null `
 -MissingNode null `
 -ValueNode null `
 -NodeType null `
 -Pojo null `
 -Number null `
 -IntegralNumber null `
 -FloatingPointNumber null `
 -Short null `
 -Int null `
 -Long null `
 -Double null `
 -BigDecimal null `
 -BigInteger null `
 -Boolean null `
 -Binary null `
 -EmbeddedValue null
```

- Convert the resource to JSON
```powershell
$JsonNode | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

