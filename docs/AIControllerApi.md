# maislurp-client-powershell.maislurp-client-powershell/Api.AIControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Transformer**](AIControllerApi#New-Transformer) | **POST** /ai/transformer | Create a transformer for reuse in automations
[**New-TransformerMappings**](AIControllerApi#New-TransformerMappings) | **POST** /ai/transformer/mappings | Create transformer mapping
[**Invoke-DeleteAllTransformerMappings**](AIControllerApi#Invoke-DeleteAllTransformerMappings) | **DELETE** /ai/transformer/mappings | Delete all transformer mapping
[**Invoke-DeleteTransformer**](AIControllerApi#Invoke-DeleteTransformer) | **DELETE** /ai/transformer/{id} | Delete a transformer
[**Invoke-DeleteTransformerMapping**](AIControllerApi#Invoke-DeleteTransformerMapping) | **DELETE** /ai/transformer/mappings/{id} | Delete transformer mapping
[**Invoke-DeleteTransformers**](AIControllerApi#Invoke-DeleteTransformers) | **DELETE** /ai/transformer | Delete all transformers
[**New-StructuredContentFromAttachment**](AIControllerApi#New-StructuredContentFromAttachment) | **POST** /ai/structured-content/attachment | Generate structured content for an attachment
[**New-StructuredContentFromEmail**](AIControllerApi#New-StructuredContentFromEmail) | **POST** /ai/structured-content/email | Generate structured content for an email
[**New-StructuredContentFromSms**](AIControllerApi#New-StructuredContentFromSms) | **POST** /ai/structured-content/sms | Generate structured content for a TXT message
[**Get-Transformer**](AIControllerApi#Get-Transformer) | **GET** /ai/transformer/{id} | Get a transformer
[**Get-TransformerMapping**](AIControllerApi#Get-TransformerMapping) | **GET** /ai/transformer/mappings/{id} | Get transformer mapping
[**Get-TransformerMappings**](AIControllerApi#Get-TransformerMappings) | **GET** /ai/transformer/mappings | Get transformer mappings
[**Get-TransformerResult**](AIControllerApi#Get-TransformerResult) | **GET** /ai/transformer/results/{id} | Get transformer result
[**Get-TransformerResults**](AIControllerApi#Get-TransformerResults) | **GET** /ai/transformer/results | Get transformer results
[**Get-Transformers**](AIControllerApi#Get-Transformers) | **GET** /ai/transformer | List transformers
[**Invoke-Transformer**](AIControllerApi#Invoke-Transformer) | **POST** /ai/transformer/invoke | Invoke a transformer
[**Confirm-StructuredOutputSchema**](AIControllerApi#Confirm-StructuredOutputSchema) | **POST** /ai/structured-content/validate | Validate structured content schema


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

$CreateAITransformerMappingOptions = (Initialize-CreateAITransformerMappingOptions -Name "Name_example" -AiTransformId "AiTransformId_example" -EntityId "EntityId_example" -EntityType "INBOX" -ContentSelector "RAW" -TriggerSelector "PER_MESSAGE" -SpreadRootArray $false) # CreateAITransformerMappingOptions | 

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

$AiTransformId = "AiTransformId_example" # String |  (optional)
$AiTransformMappingId = "AiTransformMappingId_example" # String |  (optional)
$EntityId = "EntityId_example" # String |  (optional)
$EntityType = "INBOX" # String |  (optional)
$Page = 987 # Int32 |  (optional) (default to 0)
$Size = 987 # Int32 | Optional page size. Maximum size is 100. Use page index and sort to page through larger results (optional) (default to 20)
$Sort = "ASC" # String | Optional createdAt sort direction ASC or DESC (optional) (default to "ASC")

# Get transformer results
try {
     $Result = Get-TransformerResults -AiTransformId $AiTransformId -AiTransformMappingId $AiTransformMappingId -EntityId $EntityId -EntityType $EntityType -Page $Page -Size $Size -Sort $Sort
} catch {
    Write-Host ("Exception occured when calling Get-TransformerResults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

$InvokeTransformerOptions = (Initialize-InvokeTransformerOptions -AiTransformId "AiTransformId_example" -AiTransformMappingId "AiTransformMappingId_example" -RawInput "RawInput_example" -EntityId "EntityId_example" -EntityType "EMAIL" -RawConditions @("RawConditions_example") -RawInstructions @("RawInstructions_example") -RawOutputSchema  -ContentSelector "RAW") # InvokeTransformerOptions | 

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

