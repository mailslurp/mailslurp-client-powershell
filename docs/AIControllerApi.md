# maislurp-client-powershell.maislurp-client-powershell/Api.AIControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Assert-AIMessage**](AIControllerApi#Assert-AIMessage) | **POST** /ai/messages/assert | Check named natural-language assertions against an existing email or SMS
[**New-Transformer**](AIControllerApi#New-Transformer) | **POST** /ai/transformer | Create a transformer for reuse in automations
[**New-TransformerMappings**](AIControllerApi#New-TransformerMappings) | **POST** /ai/transformer/mappings | Create transformer mapping
[**Invoke-DeleteAllTransformerMappings**](AIControllerApi#Invoke-DeleteAllTransformerMappings) | **DELETE** /ai/transformer/mappings | Delete all transformer mapping
[**Invoke-DeleteTransformer**](AIControllerApi#Invoke-DeleteTransformer) | **DELETE** /ai/transformer/{id} | Delete a transformer
[**Invoke-DeleteTransformerMapping**](AIControllerApi#Invoke-DeleteTransformerMapping) | **DELETE** /ai/transformer/mappings/{id} | Delete transformer mapping
[**Invoke-DeleteTransformerResult**](AIControllerApi#Invoke-DeleteTransformerResult) | **DELETE** /ai/transformer/results/{id} | Delete a transformer result
[**Invoke-DeleteTransformerResults**](AIControllerApi#Invoke-DeleteTransformerResults) | **DELETE** /ai/transformer/results | Delete transformer results
[**Invoke-DeleteTransformers**](AIControllerApi#Invoke-DeleteTransformers) | **DELETE** /ai/transformer | Delete all transformers
[**Export-TransformerResults**](AIControllerApi#Export-TransformerResults) | **POST** /ai/transformer/results/export | Export transformer results
[**Invoke-ExtractAIMessage**](AIControllerApi#Invoke-ExtractAIMessage) | **POST** /ai/messages/extract | Extract schema-validated data from an existing email or SMS with verified source evidence
[**New-StructuredContentFromAttachment**](AIControllerApi#New-StructuredContentFromAttachment) | **POST** /ai/structured-content/attachment | Generate structured content for an attachment
[**New-StructuredContentFromEmail**](AIControllerApi#New-StructuredContentFromEmail) | **POST** /ai/structured-content/email | Generate structured content for an email
[**New-StructuredContentFromSms**](AIControllerApi#New-StructuredContentFromSms) | **POST** /ai/structured-content/sms | Generate structured content for a TXT message
[**Get-AIMessageModels**](AIControllerApi#Get-AIMessageModels) | **GET** /ai/models | List supported message-testing AI models
[**Get-ExportTransformerResultsJob**](AIControllerApi#Get-ExportTransformerResultsJob) | **POST** /ai/transformer/results/export/{id} | Get export transformer results job
[**Get-Transformer**](AIControllerApi#Get-Transformer) | **GET** /ai/transformer/{id} | Get a transformer
[**Get-TransformerMapping**](AIControllerApi#Get-TransformerMapping) | **GET** /ai/transformer/mappings/{id} | Get transformer mapping
[**Get-TransformerMappings**](AIControllerApi#Get-TransformerMappings) | **GET** /ai/transformer/mappings | Get transformer mappings
[**Get-TransformerResult**](AIControllerApi#Get-TransformerResult) | **GET** /ai/transformer/results/{id} | Get transformer result
[**Get-TransformerResults**](AIControllerApi#Get-TransformerResults) | **GET** /ai/transformer/results | Get transformer results
[**Get-TransformerResultsTable**](AIControllerApi#Get-TransformerResultsTable) | **GET** /ai/transformer/results/table | Get transformer results table
[**Get-Transformers**](AIControllerApi#Get-Transformers) | **GET** /ai/transformer | List transformers
[**Invoke-Transformer**](AIControllerApi#Invoke-Transformer) | **POST** /ai/transformer/invoke | Invoke a transformer
[**Test-TransformerMappingMatch**](AIControllerApi#Test-TransformerMappingMatch) | **POST** /ai/transformer/mappings/{id}/match | Test transformer mapping match result
[**Confirm-StructuredOutputSchema**](AIControllerApi#Confirm-StructuredOutputSchema) | **POST** /ai/structured-content/validate | Validate structured content schema
[**Wait-ForAIMessage**](AIControllerApi#Wait-ForAIMessage) | **POST** /ai/messages/wait | Find a message across explicit inboxes or phones, then assert and extract from that same message
[**Wait-ForAIMessages**](AIControllerApi#Wait-ForAIMessages) | **POST** /ai/messages/wait-all | Wait for all named email and SMS expectations under one shared deadline and AI token budget


<a name="Assert-AIMessage"></a>
# **Assert-AIMessage**
> AIMessageResult Assert-AIMessage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AssertAIMessageOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdempotencyKey] <String><br>

Check named natural-language assertions against an existing email or SMS

Check named natural-language assertions against an existing email or SMS. Returns PASS, FAIL, INCONCLUSIVE or a distinct operational status. Idempotency-Key enables 15-minute retry deduplication; reuse it only for an identical logical request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AssertAIMessageOptions = (Initialize-AssertAIMessageOptions -Message (Initialize-AIMessageReference -Type "EMAIL" -Id "Id_example") -Assertions @((Initialize-AIMessageAssertion -Id "Id_example" -Prompt "Prompt_example")) -Timeout 123 -AiOptions (Initialize-AIMessageAIOptions -Model "BALANCED_V1" -MaxTokens 123 -MaxCandidates 123 -MaxOutputTokens 123 -MinimumConfidence 123)) # AssertAIMessageOptions | 
$IdempotencyKey = "IdempotencyKey_example" # String |  (optional)

# Check named natural-language assertions against an existing email or SMS
try {
     $Result = Assert-AIMessage -AssertAIMessageOptions $AssertAIMessageOptions -IdempotencyKey $IdempotencyKey
} catch {
    Write-Host ("Exception occured when calling Assert-AIMessage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AssertAIMessageOptions** | [**AssertAIMessageOptions**](AssertAIMessageOptions)|  | 
 **IdempotencyKey** | **String**|  | [optional] 

### Return type

[**AIMessageResult**](AIMessageResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-Transformer"></a>
# **New-Transformer**
> AITransformDto New-Transformer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AITransformCreateOptions] <PSCustomObject><br>

Create a transformer for reuse in automations

Save an AI transform instructions and schema for use with webhooks and automations

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AITransformCreateOptions = (Initialize-AITransformCreateOptions -Name "Name_example" -Conditions @("Conditions_example") -Instructions @("Instructions_example") -OutputSchema (Initialize-StructuredOutputSchema -AnyOf @((Initialize-StructuredOutputSchema -AnyOf @() -Default "TODO" -Description "Description_example" -EnumValues @("EnumValues_example") -Example "TODO" -Format "Format_example" -Items  -MaxItems 123 -MinItems 123 -MaxLength 123 -MinLength 123 -Pattern "Pattern_example" -Properties "TODO" -PropertyOrdering @("PropertyOrdering_example") -Required @("Required_example") -MaxProperties 123 -MinProperties 123 -Maximum 123 -Minimum 123 -Nullable $false -Title "Title_example" -Type "string")) -Default "TODO" -Description "Description_example" -EnumValues @("EnumValues_example") -Example "TODO" -Format "Format_example" -Items  -MaxItems 123 -MinItems 123 -MaxLength 123 -MinLength 123 -Pattern "Pattern_example" -Properties "TODO" -PropertyOrdering @("PropertyOrdering_example") -Required @("Required_example") -MaxProperties 123 -MinProperties 123 -Maximum 123 -Minimum 123 -Nullable $false -Title "Title_example" -Type "string") -OutputSchemaId "OutputSchemaId_example" -ExtractPrompt "ExtractPrompt_example") # AITransformCreateOptions | 

# Create a transformer for reuse in automations
try {
     $Result = New-Transformer -AITransformCreateOptions $AITransformCreateOptions
} catch {
    Write-Host ("Exception occured when calling New-Transformer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AITransformCreateOptions** | [**AITransformCreateOptions**](AITransformCreateOptions)|  | 

### Return type

[**AITransformDto**](AITransformDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-TransformerMappings"></a>
# **New-TransformerMappings**
> AITransformMappingDto New-TransformerMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateAITransformerMappingOptions] <PSCustomObject><br>

Create transformer mapping

Create AI transformer mappings to other entities

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$CreateAITransformerMappingOptions = (Initialize-CreateAITransformerMappingOptions -Name "Name_example" -AiTransformId "AiTransformId_example" -EntityId "EntityId_example" -EntityType "INBOX" -ContentSelector "RAW" -TriggerSelector "PER_MESSAGE" -SpreadRootArray $false -MatchOptions (Initialize-AIMappingMatchOptions -VarMatches @((Initialize-AIMappingMatchOption -Field "SUBJECT" -Should "MATCH" -Value "Value_example")))) # CreateAITransformerMappingOptions | 

# Create transformer mapping
try {
     $Result = New-TransformerMappings -CreateAITransformerMappingOptions $CreateAITransformerMappingOptions
} catch {
    Write-Host ("Exception occured when calling New-TransformerMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateAITransformerMappingOptions** | [**CreateAITransformerMappingOptions**](CreateAITransformerMappingOptions)|  | 

### Return type

[**AITransformMappingDto**](AITransformMappingDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteAllTransformerMappings"></a>
# **Invoke-DeleteAllTransformerMappings**
> void Invoke-DeleteAllTransformerMappings<br>

Delete all transformer mapping

Delete all AI transformer mappings

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Delete all transformer mapping
try {
     $Result = Invoke-DeleteAllTransformerMappings
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteAllTransformerMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteTransformer"></a>
# **Invoke-DeleteTransformer**
> void Invoke-DeleteTransformer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Delete a transformer

Delete an AI transformer and schemas by ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Delete a transformer
try {
     $Result = Invoke-DeleteTransformer -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteTransformer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteTransformerMapping"></a>
# **Invoke-DeleteTransformerMapping**
> void Invoke-DeleteTransformerMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Delete transformer mapping

Delete an AI transformer mapping

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of transform mapping

# Delete transformer mapping
try {
     $Result = Invoke-DeleteTransformerMapping -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteTransformerMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of transform mapping | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteTransformerResult"></a>
# **Invoke-DeleteTransformerResult**
> void Invoke-DeleteTransformerResult<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Delete a transformer result

Delete a saved AI transformer result owned by your account.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Delete a transformer result
try {
     $Result = Invoke-DeleteTransformerResult -Id $Id
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteTransformerResult: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteTransformerResults"></a>
# **Invoke-DeleteTransformerResults**
> void Invoke-DeleteTransformerResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AiTransformId] <PSCustomObject><br>

Delete transformer results

Delete your account's saved AI results, optionally for one transformer.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AiTransformId = "AiTransformId_example" # String |  (optional)

# Delete transformer results
try {
     $Result = Invoke-DeleteTransformerResults -AiTransformId $AiTransformId
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteTransformerResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AiTransformId** | [**String**](String)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-DeleteTransformers"></a>
# **Invoke-DeleteTransformers**
> void Invoke-DeleteTransformers<br>

Delete all transformers

Delete all AI transformers and schemas

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# Delete all transformers
try {
     $Result = Invoke-DeleteTransformers
} catch {
    Write-Host ("Exception occured when calling Invoke-DeleteTransformers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Export-TransformerResults"></a>
# **Export-TransformerResults**
> ExportTransformerResponse Export-TransformerResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExportTransformerOptions] <PSCustomObject><br>

Export transformer results

Export AI transformer results in formats such as Excel, CSV, XML etc.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ExportTransformerOptions = (Initialize-ExportTransformerOptions -AiTransformId "AiTransformId_example" -AiMappingId "AiMappingId_example" -FlattenArrays $false -Since Get-Date -Before Get-Date -Format "CSV" -InboxId "InboxId_example" -PhoneId "PhoneId_example" -EmailId "EmailId_example" -SmsId "SmsId_example" -AttachmentId "AttachmentId_example" -IncludeMetaData $false -Delimiter "Delimiter_example" -ArraySeparator "ArraySeparator_example" -IncludeMetaDataColumns @("IncludeMetaDataColumns_example")) # ExportTransformerOptions | 

# Export transformer results
try {
     $Result = Export-TransformerResults -ExportTransformerOptions $ExportTransformerOptions
} catch {
    Write-Host ("Exception occured when calling Export-TransformerResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExportTransformerOptions** | [**ExportTransformerOptions**](ExportTransformerOptions)|  | 

### Return type

[**ExportTransformerResponse**](ExportTransformerResponse) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-ExtractAIMessage"></a>
# **Invoke-ExtractAIMessage**
> AIMessageResult Invoke-ExtractAIMessage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExtractAIMessageOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdempotencyKey] <String><br>

Extract schema-validated data from an existing email or SMS with verified source evidence

Extract schema-validated data from an existing email or SMS with verified source evidence. Missing or ambiguous data is not invented. Idempotency-Key enables 15-minute retry deduplication; reuse it only for an identical logical request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$ExtractAIMessageOptions = (Initialize-ExtractAIMessageOptions -Message (Initialize-AIMessageReference -Type "EMAIL" -Id "Id_example") -OutputSchema  -TransformId "TransformId_example" -Instructions "Instructions_example" -Timeout 123 -AiOptions (Initialize-AIMessageAIOptions -Model "BALANCED_V1" -MaxTokens 123 -MaxCandidates 123 -MaxOutputTokens 123 -MinimumConfidence 123) -ExtractionPreset "OTP_CODE") # ExtractAIMessageOptions | 
$IdempotencyKey = "IdempotencyKey_example" # String |  (optional)

# Extract schema-validated data from an existing email or SMS with verified source evidence
try {
     $Result = Invoke-ExtractAIMessage -ExtractAIMessageOptions $ExtractAIMessageOptions -IdempotencyKey $IdempotencyKey
} catch {
    Write-Host ("Exception occured when calling Invoke-ExtractAIMessage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExtractAIMessageOptions** | [**ExtractAIMessageOptions**](ExtractAIMessageOptions)|  | 
 **IdempotencyKey** | **String**|  | [optional] 

### Return type

[**AIMessageResult**](AIMessageResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-StructuredContentFromAttachment"></a>
# **New-StructuredContentFromAttachment**
> StructuredContentResultDto New-StructuredContentFromAttachment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenerateStructuredContentAttachmentOptions] <PSCustomObject><br>

Generate structured content for an attachment

Use output schemas to extract data from an attachment using AI

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GenerateStructuredContentAttachmentOptions = (Initialize-GenerateStructuredContentAttachmentOptions -AttachmentId "AttachmentId_example" -Instructions "Instructions_example" -OutputSchema  -TransformId "TransformId_example" -EmailId "EmailId_example") # GenerateStructuredContentAttachmentOptions | 

# Generate structured content for an attachment
try {
     $Result = New-StructuredContentFromAttachment -GenerateStructuredContentAttachmentOptions $GenerateStructuredContentAttachmentOptions
} catch {
    Write-Host ("Exception occured when calling New-StructuredContentFromAttachment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GenerateStructuredContentAttachmentOptions** | [**GenerateStructuredContentAttachmentOptions**](GenerateStructuredContentAttachmentOptions)|  | 

### Return type

[**StructuredContentResultDto**](StructuredContentResultDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-StructuredContentFromEmail"></a>
# **New-StructuredContentFromEmail**
> StructuredContentResultDto New-StructuredContentFromEmail<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenerateStructuredContentEmailOptions] <PSCustomObject><br>

Generate structured content for an email

Use output schemas to extract data from an email using AI

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GenerateStructuredContentEmailOptions = (Initialize-GenerateStructuredContentEmailOptions -EmailId "EmailId_example" -ContentSelector "RAW" -Instructions "Instructions_example" -OutputSchema  -TransformId "TransformId_example") # GenerateStructuredContentEmailOptions | 

# Generate structured content for an email
try {
     $Result = New-StructuredContentFromEmail -GenerateStructuredContentEmailOptions $GenerateStructuredContentEmailOptions
} catch {
    Write-Host ("Exception occured when calling New-StructuredContentFromEmail: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GenerateStructuredContentEmailOptions** | [**GenerateStructuredContentEmailOptions**](GenerateStructuredContentEmailOptions)|  | 

### Return type

[**StructuredContentResultDto**](StructuredContentResultDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-StructuredContentFromSms"></a>
# **New-StructuredContentFromSms**
> StructuredContentResultDto New-StructuredContentFromSms<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GenerateStructuredContentSmsOptions] <PSCustomObject><br>

Generate structured content for a TXT message

Use output schemas to extract data from an SMS using AI

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$GenerateStructuredContentSmsOptions = (Initialize-GenerateStructuredContentSmsOptions -SmsId "SmsId_example" -Instructions "Instructions_example" -OutputSchema  -TransformId "TransformId_example") # GenerateStructuredContentSmsOptions | 

# Generate structured content for a TXT message
try {
     $Result = New-StructuredContentFromSms -GenerateStructuredContentSmsOptions $GenerateStructuredContentSmsOptions
} catch {
    Write-Host ("Exception occured when calling New-StructuredContentFromSms: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GenerateStructuredContentSmsOptions** | [**GenerateStructuredContentSmsOptions**](GenerateStructuredContentSmsOptions)|  | 

### Return type

[**StructuredContentResultDto**](StructuredContentResultDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-AIMessageModels"></a>
# **Get-AIMessageModels**
> AIMessageModelDto[] Get-AIMessageModels<br>

List supported message-testing AI models

Discover enum model selectors, resolved provider models, evaluator versions and token multipliers. Pinned models never silently fall back.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"


# List supported message-testing AI models
try {
     $Result = Get-AIMessageModels
} catch {
    Write-Host ("Exception occured when calling Get-AIMessageModels: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AIMessageModelDto[]**](AIMessageModelDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-ExportTransformerResultsJob"></a>
# **Get-ExportTransformerResultsJob**
> ExportTransformerResultJobDto Get-ExportTransformerResultsJob<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get export transformer results job

Get the job status for an export

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get export transformer results job
try {
     $Result = Get-ExportTransformerResultsJob -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-ExportTransformerResultsJob: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**ExportTransformerResultJobDto**](ExportTransformerResultJobDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Transformer"></a>
# **Get-Transformer**
> AITransformDto Get-Transformer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get a transformer

Get AI transformer and schemas by ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | 

# Get a transformer
try {
     $Result = Get-Transformer -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-Transformer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)|  | 

### Return type

[**AITransformDto**](AITransformDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TransformerMapping"></a>
# **Get-TransformerMapping**
> AITransformMappingDto Get-TransformerMapping<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get transformer mapping

Get an AI transformer mapping

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of transform mapping

# Get transformer mapping
try {
     $Result = Get-TransformerMapping -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-TransformerMapping: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of transform mapping | 

### Return type

[**AITransformMappingDto**](AITransformMappingDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TransformerMappings"></a>
# **Get-TransformerMappings**
> PageAITransformMappingProjection Get-TransformerMappings<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AiTransformId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EntityId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EntityType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get transformer mappings

Get AI transformer mappings to other entities

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$AiTransformId = "AiTransformId_example" # String |  (optional)
$EntityId = "EntityId_example" # String |  (optional)
$EntityType = "INBOX" # String |  (optional)
$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 | Optional page size. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get transformer mappings
try {
     $Result = Get-TransformerMappings -AiTransformId $AiTransformId -EntityId $EntityId -EntityType $EntityType -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-TransformerMappings: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AiTransformId** | [**String**](String)|  | [optional] 
 **EntityId** | [**String**](String)|  | [optional] 
 **EntityType** | **String**|  | [optional] 
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**| Optional page size. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageAITransformMappingProjection**](PageAITransformMappingProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TransformerResult"></a>
# **Get-TransformerResult**
> AITransformResultDto Get-TransformerResult<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>

Get transformer result

Get AI transformer result

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of transform result

# Get transformer result
try {
     $Result = Get-TransformerResult -Id $Id
} catch {
    Write-Host ("Exception occured when calling Get-TransformerResult: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of transform result | 

### Return type

[**AITransformResultDto**](AITransformResultDto) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TransformerResults"></a>
# **Get-TransformerResults**
> PageAITransformResultProjection Get-TransformerResults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttachmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AiTransformId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AiTransformMappingId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EntityId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EntityType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get transformer results

Get AI transformer results

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$EmailId = "EmailId_example" # String |  (optional)
$SmsId = "SmsId_example" # String |  (optional)
$AttachmentId = "AttachmentId_example" # String |  (optional)
$AiTransformId = "AiTransformId_example" # String |  (optional)
$AiTransformMappingId = "AiTransformMappingId_example" # String |  (optional)
$EntityId = "EntityId_example" # String |  (optional)
$EntityType = "INBOX" # String |  (optional)
$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 | Optional page size. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get transformer results
try {
     $Result = Get-TransformerResults -EmailId $EmailId -SmsId $SmsId -AttachmentId $AttachmentId -AiTransformId $AiTransformId -AiTransformMappingId $AiTransformMappingId -EntityId $EntityId -EntityType $EntityType -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-TransformerResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailId** | [**String**](String)|  | [optional] 
 **SmsId** | [**String**](String)|  | [optional] 
 **AttachmentId** | **String**|  | [optional] 
 **AiTransformId** | [**String**](String)|  | [optional] 
 **AiTransformMappingId** | [**String**](String)|  | [optional] 
 **EntityId** | [**String**](String)|  | [optional] 
 **EntityType** | **String**|  | [optional] 
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**| Optional page size. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageAITransformResultProjection**](PageAITransformResultProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-TransformerResultsTable"></a>
# **Get-TransformerResultsTable**
> PageTableData Get-TransformerResultsTable<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeMetaData] <Boolean><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FlattenArraysToRows] <Boolean><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttachmentId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AiTransformId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AiTransformMappingId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EntityId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EntityType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

Get transformer results table

Get AI transformer results in table format

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$IncludeMetaData = true # Boolean | 
$FlattenArraysToRows = true # Boolean | 
$EmailId = "EmailId_example" # String |  (optional)
$SmsId = "SmsId_example" # String |  (optional)
$AttachmentId = "AttachmentId_example" # String |  (optional)
$AiTransformId = "AiTransformId_example" # String |  (optional)
$AiTransformMappingId = "AiTransformMappingId_example" # String |  (optional)
$EntityId = "EntityId_example" # String |  (optional)
$EntityType = "INBOX" # String |  (optional)
$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 | Optional page size. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get transformer results table
try {
     $Result = Get-TransformerResultsTable -IncludeMetaData $IncludeMetaData -FlattenArraysToRows $FlattenArraysToRows -EmailId $EmailId -SmsId $SmsId -AttachmentId $AttachmentId -AiTransformId $AiTransformId -AiTransformMappingId $AiTransformMappingId -EntityId $EntityId -EntityType $EntityType -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-TransformerResultsTable: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IncludeMetaData** | **Boolean**|  | 
 **FlattenArraysToRows** | **Boolean**|  | 
 **EmailId** | [**String**](String)|  | [optional] 
 **SmsId** | [**String**](String)|  | [optional] 
 **AttachmentId** | **String**|  | [optional] 
 **AiTransformId** | [**String**](String)|  | [optional] 
 **AiTransformMappingId** | [**String**](String)|  | [optional] 
 **EntityId** | [**String**](String)|  | [optional] 
 **EntityType** | **String**|  | [optional] 
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**| Optional page size. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]

### Return type

[**PageTableData**](PageTableData) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Get-Transformers"></a>
# **Get-Transformers**
> PageAITransformProjection Get-Transformers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Size] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <String[]><br>

List transformers

List all AI transforms

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 | Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")
$Include = @("Inner_example") # String[] | Optional list of IDs to include in result (optional)

# List transformers
try {
     $Result = Get-Transformers -Page $Page -Size $Size -Sort $Sort -Include $Include
} catch {
    Write-Host ("Exception occured when calling Get-Transformers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **Int32**|  | [optional] [default to 0]
 **Size** | **Int32**| Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results | [optional] [default to 20]
 **Sort** | **String**| Optional createdAt sort direction ASC or DESC | [optional] [default to &quot;ASC&quot;]
 **Include** | [**String[]**](String)| Optional list of IDs to include in result | [optional] 

### Return type

[**PageAITransformProjection**](PageAITransformProjection) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Invoke-Transformer"></a>
# **Invoke-Transformer**
> ConditionalStructuredContentResult Invoke-Transformer<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InvokeTransformerOptions] <PSCustomObject><br>

Invoke a transformer

Execute an AI transformer to generate structured content

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$InvokeTransformerOptions = (Initialize-InvokeTransformerOptions -AiTransformId "AiTransformId_example" -AiTransformMappingId "AiTransformMappingId_example" -RawInput "RawInput_example" -EntityId "EntityId_example" -EntityType "EMAIL" -RawConditions @("RawConditions_example") -RawInstructions @("RawInstructions_example") -RawOutputSchema  -ContentSelector "RAW" -SaveResults $false) # InvokeTransformerOptions | 

# Invoke a transformer
try {
     $Result = Invoke-Transformer -InvokeTransformerOptions $InvokeTransformerOptions
} catch {
    Write-Host ("Exception occured when calling Invoke-Transformer: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InvokeTransformerOptions** | [**InvokeTransformerOptions**](InvokeTransformerOptions)|  | 

### Return type

[**ConditionalStructuredContentResult**](ConditionalStructuredContentResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Test-TransformerMappingMatch"></a>
# **Test-TransformerMappingMatch**
> AITransformMappingMatchResult Test-TransformerMappingMatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SmsId] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AttachmentId] <String><br>

Test transformer mapping match result

Evaluate transform mapping match conditions for given email, sms, or attachment

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$Id = "Id_example" # String | ID of transform mapping
$EmailId = "EmailId_example" # String |  (optional)
$SmsId = "SmsId_example" # String |  (optional)
$AttachmentId = "AttachmentId_example" # String |  (optional)

# Test transformer mapping match result
try {
     $Result = Test-TransformerMappingMatch -Id $Id -EmailId $EmailId -SmsId $SmsId -AttachmentId $AttachmentId
} catch {
    Write-Host ("Exception occured when calling Test-TransformerMappingMatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | [**String**](String)| ID of transform mapping | 
 **EmailId** | [**String**](String)|  | [optional] 
 **SmsId** | [**String**](String)|  | [optional] 
 **AttachmentId** | **String**|  | [optional] 

### Return type

[**AITransformMappingMatchResult**](AITransformMappingMatchResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Confirm-StructuredOutputSchema"></a>
# **Confirm-StructuredOutputSchema**
> StructuredOutputSchemaValidation Confirm-StructuredOutputSchema<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StructuredOutputSchema] <PSCustomObject><br>

Validate structured content schema

Check if a schema is valid and can be used to extract data using AI

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$StructuredOutputSchema =  # StructuredOutputSchema | 

# Validate structured content schema
try {
     $Result = Confirm-StructuredOutputSchema -StructuredOutputSchema $StructuredOutputSchema
} catch {
    Write-Host ("Exception occured when calling Confirm-StructuredOutputSchema: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **StructuredOutputSchema** | [**StructuredOutputSchema**](StructuredOutputSchema)|  | 

### Return type

[**StructuredOutputSchemaValidation**](StructuredOutputSchemaValidation) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Wait-ForAIMessage"></a>
# **Wait-ForAIMessage**
> AIMessageResult Wait-ForAIMessage<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WaitForAIMessageOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdempotencyKey] <String><br>

Find a message across explicit inboxes or phones, then assert and extract from that same message

Find a message across explicit inboxes or phones, then assert and extract from that same message. Checks never select a replacement message after failure. Idempotency-Key enables 15-minute retry deduplication; reuse it only for an identical logical request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WaitForAIMessageOptions = (Initialize-WaitForAIMessageOptions -Scope (Initialize-AIMessageScope -InboxIds @("InboxIds_example") -PhoneNumberIds @("PhoneNumberIds_example")) -Since Get-Date -Timeout 123 -Before Get-Date -UnreadOnly $false -SortDirection "ASC" -Match (Initialize-AIMessageMatchOptions -Prompt "Prompt_example" -AiOptions ) -EmailMatchOptions (Initialize-MatchOptions -VarMatches @((Initialize-MatchOption -Field "SUBJECT" -Should "MATCH" -Value "Value_example")) -Conditions @((Initialize-ConditionOption -Condition "HAS_ATTACHMENTS" -Value "TRUE")) -Ai (Initialize-AIMessageMatchOptions -Prompt "Prompt_example" -AiOptions )) -SmsMatchOptions (Initialize-SmsMatchOptions -VarMatches @((Initialize-SmsMatchOption -Field "BODY" -Should "MATCH" -Value "Value_example")) -Ai ) -Assertions @((Initialize-AIMessageAssertion -Id "Id_example" -Prompt "Prompt_example")) -OutputSchema  -TransformId "TransformId_example" -Instructions "Instructions_example" -AiOptions  -ExtractionPreset "OTP_CODE") # WaitForAIMessageOptions | 
$IdempotencyKey = "IdempotencyKey_example" # String |  (optional)

# Find a message across explicit inboxes or phones, then assert and extract from that same message
try {
     $Result = Wait-ForAIMessage -WaitForAIMessageOptions $WaitForAIMessageOptions -IdempotencyKey $IdempotencyKey
} catch {
    Write-Host ("Exception occured when calling Wait-ForAIMessage: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WaitForAIMessageOptions** | [**WaitForAIMessageOptions**](WaitForAIMessageOptions)|  | 
 **IdempotencyKey** | **String**|  | [optional] 

### Return type

[**AIMessageResult**](AIMessageResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="Wait-ForAIMessages"></a>
# **Wait-ForAIMessages**
> AIMessagesResult Wait-ForAIMessages<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WaitForAIMessagesOptions] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdempotencyKey] <String><br>

Wait for all named email and SMS expectations under one shared deadline and AI token budget

Wait for all named email and SMS expectations under one shared deadline and AI token budget. Idempotency-Key enables 15-minute retry deduplication; reuse it only for an identical logical request.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: API_KEY
$Configuration.ApiKey.x-api-key = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.x-api-key = "Bearer"

$WaitForAIMessagesOptions = (Initialize-WaitForAIMessagesOptions -Expectations @((Initialize-AIMessageExpectation -Id "Id_example" -Scope (Initialize-AIMessageScope -InboxIds @("InboxIds_example") -PhoneNumberIds @("PhoneNumberIds_example")) -Match  -EmailMatchOptions (Initialize-MatchOptions -VarMatches @((Initialize-MatchOption -Field "SUBJECT" -Should "MATCH" -Value "Value_example")) -Conditions @((Initialize-ConditionOption -Condition "HAS_ATTACHMENTS" -Value "TRUE")) -Ai ) -SmsMatchOptions (Initialize-SmsMatchOptions -VarMatches @((Initialize-SmsMatchOption -Field "BODY" -Should "MATCH" -Value "Value_example")) -Ai ) -Assertions @() -OutputSchema  -TransformId "TransformId_example" -Instructions "Instructions_example" -ExtractionPreset "OTP_CODE")) -Since Get-Date -Timeout 123 -Before Get-Date -AllowSharedMessages $false -AiOptions ) # WaitForAIMessagesOptions | 
$IdempotencyKey = "IdempotencyKey_example" # String |  (optional)

# Wait for all named email and SMS expectations under one shared deadline and AI token budget
try {
     $Result = Wait-ForAIMessages -WaitForAIMessagesOptions $WaitForAIMessagesOptions -IdempotencyKey $IdempotencyKey
} catch {
    Write-Host ("Exception occured when calling Wait-ForAIMessages: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WaitForAIMessagesOptions** | [**WaitForAIMessagesOptions**](WaitForAIMessagesOptions)|  | 
 **IdempotencyKey** | **String**|  | [optional] 

### Return type

[**AIMessagesResult**](AIMessagesResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

