# maislurp-client-powershell.maislurp-client-powershell/Api.AIControllerApi

All URIs are relative to *https://api.mailslurp.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-StructuredContentFromAttachment**](AIControllerApi#New-StructuredContentFromAttachment) | **POST** /ai/structured-content/attachment | Generate structured content for an attachment
[**New-StructuredContentFromEmail**](AIControllerApi#New-StructuredContentFromEmail) | **POST** /ai/structured-content/email | Generate structured content for an email
[**Confirm-StructuredOutputSchema**](AIControllerApi#Confirm-StructuredOutputSchema) | **POST** /ai/structured-content/validate | Validate structured content schema


<a name="New-StructuredContentFromAttachment"></a>
# **New-StructuredContentFromAttachment**
> StructuredContentResult New-StructuredContentFromAttachment<br>
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

$GenerateStructuredContentAttachmentOptions = (Initialize-GenerateStructuredContentAttachmentOptions -AttachmentId "AttachmentId_example" -Instructions "Instructions_example" -OutputSchema (Initialize-StructuredOutputSchema -AnyOf @((Initialize-StructuredOutputSchema -AnyOf @() -Default "TODO" -Description "Description_example" -Enum @("Enum_example") -Example "TODO" -Format "Format_example" -Items  -MaxItems 123 -MinItems 123 -MaxLength 123 -MinLength 123 -Pattern "Pattern_example" -Properties "TODO" -PropertyOrdering @("PropertyOrdering_example") -Required @("Required_example") -MaxProperties 123 -MinProperties 123 -Maximum 123 -Minimum 123 -Nullable $false -Title "Title_example" -Type "string")) -Default "TODO" -Description "Description_example" -Enum @("Enum_example") -Example "TODO" -Format "Format_example" -Items  -MaxItems 123 -MinItems 123 -MaxLength 123 -MinLength 123 -Pattern "Pattern_example" -Properties "TODO" -PropertyOrdering @("PropertyOrdering_example") -Required @("Required_example") -MaxProperties 123 -MinProperties 123 -Maximum 123 -Minimum 123 -Nullable $false -Title "Title_example" -Type "string")) # GenerateStructuredContentAttachmentOptions | 

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

[**StructuredContentResult**](StructuredContentResult) (PSCustomObject)

### Authorization

[API_KEY](../README#API_KEY)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to Model list]](../README#documentation-for-models) [[Back to README]](../README)

<a name="New-StructuredContentFromEmail"></a>
# **New-StructuredContentFromEmail**
> StructuredContentResult New-StructuredContentFromEmail<br>
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

$GenerateStructuredContentEmailOptions = (Initialize-GenerateStructuredContentEmailOptions -EmailId "EmailId_example" -ContentSelector "RAW" -Instructions "Instructions_example" -OutputSchema ) # GenerateStructuredContentEmailOptions | 

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

[**StructuredContentResult**](StructuredContentResult) (PSCustomObject)

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

