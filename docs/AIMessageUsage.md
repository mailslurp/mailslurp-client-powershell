# AIMessageUsage
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tokens** | **Int64** | Consumed MailSlurp AI tokens after applying the model multiplier. These are not raw provider tokens. | 
**CandidatesEvaluated** | **Int32** |  | 
**Complete** | **Boolean** | False when a timed-out provider invocation is still settling. The reservation remains held and actual usage is settled when it finishes. | 
**ReservedTokens** | **Int64** | AI tokens held for provider attempts with unknown usage. Excluded from tokens; complete remains false until reconciliation. | 

## Examples

- Prepare the resource
```powershell
$AIMessageUsage = Initialize-maislurp-client-powershellAIMessageUsage  -Tokens null `
 -CandidatesEvaluated null `
 -Complete null `
 -ReservedTokens null
```

- Convert the resource to JSON
```powershell
$AIMessageUsage | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

