#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Get all sent email tracking pixels in paginated form

.DESCRIPTION

No description available.

.PARAMETER Page
Optional page index in sent email tracking pixel list pagination

.PARAMETER SearchFilter
Optional search filter

.PARAMETER Size
Optional page size in sent email tracking pixel list pagination

.PARAMETER Sort
Optional createdAt sort direction ASC or DESC

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PageTrackingPixelProjection
#>
function Get-AllSentTrackingPixels {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Page},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SearchFilter},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Size},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("ASC", "DESC")]
        [String]
        ${Sort},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-AllSentTrackingPixels' | Write-Debug
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
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/sent/tracking-pixels'

        if ($Page) {
            $LocalVarQueryParameters['page'] = $Page
        }

        if ($SearchFilter) {
            $LocalVarQueryParameters['searchFilter'] = $SearchFilter
        }

        if ($Size) {
            $LocalVarQueryParameters['size'] = $Size
        }

        if ($Sort) {
            $LocalVarQueryParameters['sort'] = $Sort
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
                                -ReturnType "PageTrackingPixelProjection" `
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

Get sent email receipt

.DESCRIPTION

No description available.

.PARAMETER Id
id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SentEmailDto
#>
function Get-SentEmail {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Id},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-SentEmail' | Write-Debug
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
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/sent/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling getSentEmail."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', $Id)

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
                                -ReturnType "SentEmailDto" `
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

Get sent email HTML content

.DESCRIPTION

No description available.

.PARAMETER Id
id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

String
#>
function Get-SentEmailHTMLContent {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Id},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-SentEmailHTMLContent' | Write-Debug
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
        $LocalVarAccepts = @('text/html')

        $LocalVarUri = '/sent/{id}/html'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling getSentEmailHTMLContent."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', $Id)

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
                                -ReturnType "String" `
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

Get all tracking pixels for a sent email in paginated form

.DESCRIPTION

No description available.

.PARAMETER Id
id

.PARAMETER Page
Optional page index in sent email tracking pixel list pagination

.PARAMETER SearchFilter
Optional search filter

.PARAMETER Size
Optional page size in sent email tracking pixel list pagination

.PARAMETER Sort
Optional createdAt sort direction ASC or DESC

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PageTrackingPixelProjection
#>
function Get-SentEmailTrackingPixels {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Page},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SearchFilter},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Size},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("ASC", "DESC")]
        [String]
        ${Sort},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-SentEmailTrackingPixels' | Write-Debug
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
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/sent/{id}/tracking-pixels'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling getSentEmailTrackingPixels."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', $Id)

        if ($Page) {
            $LocalVarQueryParameters['page'] = $Page
        }

        if ($SearchFilter) {
            $LocalVarQueryParameters['searchFilter'] = $SearchFilter
        }

        if ($Size) {
            $LocalVarQueryParameters['size'] = $Size
        }

        if ($Sort) {
            $LocalVarQueryParameters['sort'] = $Sort
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
                                -ReturnType "PageTrackingPixelProjection" `
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

Get all sent emails in paginated form

.DESCRIPTION

No description available.

.PARAMETER InboxId
Optional inboxId to filter sender of sent emails by

.PARAMETER Page
Optional page index in inbox sent email list pagination

.PARAMETER SearchFilter
Optional search filter

.PARAMETER Size
Optional page size in inbox sent email list pagination

.PARAMETER Sort
Optional createdAt sort direction ASC or DESC

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PageSentEmailProjection
#>
function Get-SentEmails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${InboxId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Page},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SearchFilter},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Size},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("ASC", "DESC")]
        [String]
        ${Sort},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-SentEmails' | Write-Debug
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
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/sent'

        if ($InboxId) {
            $LocalVarQueryParameters['inboxId'] = $InboxId
        }

        if ($Page) {
            $LocalVarQueryParameters['page'] = $Page
        }

        if ($SearchFilter) {
            $LocalVarQueryParameters['searchFilter'] = $SearchFilter
        }

        if ($Size) {
            $LocalVarQueryParameters['size'] = $Size
        }

        if ($Sort) {
            $LocalVarQueryParameters['sort'] = $Sort
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
                                -ReturnType "PageSentEmailProjection" `
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

Get all sent organization emails in paginated form

.DESCRIPTION

No description available.

.PARAMETER InboxId
Optional inboxId to filter sender of sent emails by

.PARAMETER Page
Optional page index in sent email list pagination

.PARAMETER SearchFilter
Optional search filter

.PARAMETER Size
Optional page size in sent email list pagination

.PARAMETER Sort
Optional createdAt sort direction ASC or DESC

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PageSentEmailProjection
#>
function Get-SentOrganizationEmails {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${InboxId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Page},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SearchFilter},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Size},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("ASC", "DESC")]
        [String]
        ${Sort},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-SentOrganizationEmails' | Write-Debug
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
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/sent/organization'

        if ($InboxId) {
            $LocalVarQueryParameters['inboxId'] = $InboxId
        }

        if ($Page) {
            $LocalVarQueryParameters['page'] = $Page
        }

        if ($SearchFilter) {
            $LocalVarQueryParameters['searchFilter'] = $SearchFilter
        }

        if ($Size) {
            $LocalVarQueryParameters['size'] = $Size
        }

        if ($Sort) {
            $LocalVarQueryParameters['sort'] = $Sort
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
                                -ReturnType "PageSentEmailProjection" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

