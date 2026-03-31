# DeliverabilityExpectation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Optional label for this expectation | [optional] 
**MinCount** | **Int64** | Minimum number of matching messages required for this expectation to pass | 
**VarFrom** | **String** | Optional sender filter. Matching is case-insensitive contains against inbound sender/from values. | [optional] 
**To** | **String** | Optional recipient filter. Matching is case-insensitive contains against recipient/to values. | [optional] 
**Subject** | **String** | Optional subject filter for INBOX scope tests. Ignored for PHONE scope tests. | [optional] 

## Examples

- Prepare the resource
```powershell
$DeliverabilityExpectation = Initialize-maislurp-client-powershellDeliverabilityExpectation  -Name From system sender `
 -MinCount 1 `
 -VarFrom noreply@example.com `
 -To qa+load@example.com `
 -Subject verification
```

- Convert the resource to JSON
```powershell
$DeliverabilityExpectation | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

