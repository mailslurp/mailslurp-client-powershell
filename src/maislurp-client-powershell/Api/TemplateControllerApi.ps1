#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create a Template

.DESCRIPTION

No description available.

.PARAMETER CreateTemplateOptions
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

TemplateDto
#>
function New-Template {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${CreateTemplateOptions},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-Template' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('*/*')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/templates'

        if (!$CreateTemplateOptions) {
            throw "Error! The required parameter `CreateTemplateOptions` missing when calling createTemplate."
        }

        $LocalVarBodyParameter = $CreateTemplateOptions | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["API_KEY"]) {
            $LocalVarHeaderParameters['API_KEY'] = $Configuration["ApiKey"]["API_KEY"]
            Write-Verbose ("Using API key 'API_KEY' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "TemplateDto" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Delete email template

.DESCRIPTION

No description available.

.PARAMETER TemplateId
Template ID

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-DeleteTemplate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${TemplateId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DeleteTemplate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        $LocalVarUri = '/templates/{templateId}'
        if (!$TemplateId) {
            throw "Error! The required parameter `TemplateId` missing when calling deleteTemplate."
        }
        $LocalVarUri = $LocalVarUri.replace('{templateId}', $TemplateId)

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["API_KEY"]) {
            $LocalVarHeaderParameters['API_KEY'] = $Configuration["ApiKey"]["API_KEY"]
            Write-Verbose ("Using API key 'API_KEY' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

List templates

.DESCRIPTION

No description available.

.PARAMETER Page
Optional page index in list pagination

.PARAMETER Size
Optional page size in list pagination

.PARAMETER Sort
Optional createdAt sort direction ASC or DESC

.PARAMETER Since
Filter by created at after the given timestamp

.PARAMETER Before
Filter by created at before the given timestamp

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PageTemplateProjection
#>
function Get-AllTemplates {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Page},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Size},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("ASC", "DESC")]
        [String]
        ${Sort},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${Since},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${Before},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-AllTemplates' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('*/*')

        $LocalVarUri = '/templates/paginated'

        if ($Page) {
            $LocalVarQueryParameters['page'] = $Page
        }

        if ($Size) {
            $LocalVarQueryParameters['size'] = $Size
        }

        if ($Sort) {
            $LocalVarQueryParameters['sort'] = $Sort
        }

        if ($Since) {
            $LocalVarQueryParameters['since'] = $Since
        }

        if ($Before) {
            $LocalVarQueryParameters['before'] = $Before
        }

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["API_KEY"]) {
            $LocalVarHeaderParameters['API_KEY'] = $Configuration["ApiKey"]["API_KEY"]
            Write-Verbose ("Using API key 'API_KEY' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "PageTemplateProjection" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Get template

.DESCRIPTION

No description available.

.PARAMETER TemplateId
Template ID

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

TemplateDto
#>
function Get-Template {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${TemplateId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-Template' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('*/*')

        $LocalVarUri = '/templates/{templateId}'
        if (!$TemplateId) {
            throw "Error! The required parameter `TemplateId` missing when calling getTemplate."
        }
        $LocalVarUri = $LocalVarUri.replace('{templateId}', $TemplateId)

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["API_KEY"]) {
            $LocalVarHeaderParameters['API_KEY'] = $Configuration["ApiKey"]["API_KEY"]
            Write-Verbose ("Using API key 'API_KEY' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "TemplateDto" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

List templates

.DESCRIPTION

No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

TemplateProjection[]
#>
function Get-Templates {
    [CmdletBinding()]
    Param (
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-Templates' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('*/*')

        $LocalVarUri = '/templates'

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["API_KEY"]) {
            $LocalVarHeaderParameters['API_KEY'] = $Configuration["ApiKey"]["API_KEY"]
            Write-Verbose ("Using API key 'API_KEY' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "TemplateProjection[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Update template

.DESCRIPTION

No description available.

.PARAMETER TemplateId
Template ID

.PARAMETER CreateTemplateOptions
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

TemplateDto
#>
function Update-Template {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${TemplateId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${CreateTemplateOptions},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-Template' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('*/*')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/templates/{templateId}'
        if (!$TemplateId) {
            throw "Error! The required parameter `TemplateId` missing when calling updateTemplate."
        }
        $LocalVarUri = $LocalVarUri.replace('{templateId}', $TemplateId)

        if (!$CreateTemplateOptions) {
            throw "Error! The required parameter `CreateTemplateOptions` missing when calling updateTemplate."
        }

        $LocalVarBodyParameter = $CreateTemplateOptions | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["API_KEY"]) {
            $LocalVarHeaderParameters['API_KEY'] = $Configuration["ApiKey"]["API_KEY"]
            Write-Verbose ("Using API key 'API_KEY' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "TemplateDto" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

