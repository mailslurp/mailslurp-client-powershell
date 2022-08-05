#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Export inboxes link callable via browser

.DESCRIPTION

No description available.

.PARAMETER ExportType
No description available.

.PARAMETER ApiKey
No description available.

.PARAMETER OutputFormat
No description available.

.PARAMETER Filter
No description available.

.PARAMETER ListSeparatorToken
No description available.

.PARAMETER ExcludePreviouslyExported
No description available.

.PARAMETER CreatedEarliestTime
No description available.

.PARAMETER CreatedOldestTime
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SystemByte[]
#>
function Export-Entities {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("INBOXES", "CONTACTS", "ATTACHMENTS", "EMAILS")]
        [String]
        ${ExportType},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ApiKey},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("CSV_DEFAULT", "CSV_EXCEL")]
        [String]
        ${OutputFormat},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Filter},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ListSeparatorToken},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${ExcludePreviouslyExported},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${CreatedEarliestTime},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${CreatedOldestTime},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Export-Entities' | Write-Debug
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

        $LocalVarUri = '/export'

        if (!$ExportType) {
            throw "Error! The required parameter `ExportType` missing when calling exportEntities."
        }
        $LocalVarQueryParameters['exportType'] = $ExportType

        if (!$ApiKey) {
            throw "Error! The required parameter `ApiKey` missing when calling exportEntities."
        }
        $LocalVarQueryParameters['apiKey'] = $ApiKey

        if (!$OutputFormat) {
            throw "Error! The required parameter `OutputFormat` missing when calling exportEntities."
        }
        $LocalVarQueryParameters['outputFormat'] = $OutputFormat

        if ($Filter) {
            $LocalVarQueryParameters['filter'] = $Filter
        }

        if ($ListSeparatorToken) {
            $LocalVarQueryParameters['listSeparatorToken'] = $ListSeparatorToken
        }

        if ($ExcludePreviouslyExported) {
            $LocalVarQueryParameters['excludePreviouslyExported'] = $ExcludePreviouslyExported
        }

        if ($CreatedEarliestTime) {
            $LocalVarQueryParameters['createdEarliestTime'] = $CreatedEarliestTime
        }

        if ($CreatedOldestTime) {
            $LocalVarQueryParameters['createdOldestTime'] = $CreatedOldestTime
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
                                -ReturnType "SystemByte[]" `
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

Get export link

.DESCRIPTION

No description available.

.PARAMETER ExportType
No description available.

.PARAMETER ExportOptions
No description available.

.PARAMETER ApiKey
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ExportLink
#>
function Get-ExportLink {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("INBOXES", "CONTACTS", "ATTACHMENTS", "EMAILS")]
        [String]
        ${ExportType},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${ExportOptions},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ApiKey},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-ExportLink' | Write-Debug
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

        $LocalVarUri = '/export'

        if (!$ExportType) {
            throw "Error! The required parameter `ExportType` missing when calling getExportLink."
        }
        $LocalVarQueryParameters['exportType'] = $ExportType

        if ($ApiKey) {
            $LocalVarQueryParameters['apiKey'] = $ApiKey
        }

        if (!$ExportOptions) {
            throw "Error! The required parameter `ExportOptions` missing when calling getExportLink."
        }

        $LocalVarBodyParameter = $ExportOptions | ConvertTo-Json -Depth 100

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
                                -ReturnType "ExportLink" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

