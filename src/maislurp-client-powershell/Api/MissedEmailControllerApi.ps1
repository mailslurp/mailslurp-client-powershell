#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Get all MissedEmails in paginated format

.DESCRIPTION

No description available.

.PARAMETER Page
Optional page index in list pagination

.PARAMETER Size
Optional page size in list pagination

.PARAMETER Sort
Optional createdAt sort direction ASC or DESC

.PARAMETER SearchFilter
Optional search filter

.PARAMETER Since
Filter by created at after the given timestamp

.PARAMETER Before
Filter by created at before the given timestamp

.PARAMETER InboxId
Optional inbox ID filter

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PageMissedEmailProjection
#>
function Get-AllMissedEmails {
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
        [String]
        ${SearchFilter},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${Since},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${Before},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${InboxId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-AllMissedEmails' | Write-Debug
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

        $LocalVarUri = '/missed-emails'

        if ($Page) {
            $LocalVarQueryParameters['page'] = $Page
        }

        if ($Size) {
            $LocalVarQueryParameters['size'] = $Size
        }

        if ($Sort) {
            $LocalVarQueryParameters['sort'] = $Sort
        }

        if ($SearchFilter) {
            $LocalVarQueryParameters['searchFilter'] = $SearchFilter
        }

        if ($Since) {
            $LocalVarQueryParameters['since'] = $Since
        }

        if ($Before) {
            $LocalVarQueryParameters['before'] = $Before
        }

        if ($InboxId) {
            $LocalVarQueryParameters['inboxId'] = $InboxId
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
                                -ReturnType "PageMissedEmailProjection" `
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

Get all unknown missed emails in paginated format

.DESCRIPTION

No description available.

.PARAMETER Page
Optional page index in list pagination

.PARAMETER Size
Optional page size in list pagination

.PARAMETER Sort
Optional createdAt sort direction ASC or DESC

.PARAMETER SearchFilter
Optional search filter

.PARAMETER Since
Filter by created at after the given timestamp

.PARAMETER Before
Filter by created at before the given timestamp

.PARAMETER InboxId
Optional inbox ID filter

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PageUnknownMissedEmailProjection
#>
function Get-AllUnknownMissedEmails {
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
        [String]
        ${SearchFilter},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${Since},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${Before},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${InboxId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-AllUnknownMissedEmails' | Write-Debug
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

        $LocalVarUri = '/missed-emails/unknown'

        if ($Page) {
            $LocalVarQueryParameters['page'] = $Page
        }

        if ($Size) {
            $LocalVarQueryParameters['size'] = $Size
        }

        if ($Sort) {
            $LocalVarQueryParameters['sort'] = $Sort
        }

        if ($SearchFilter) {
            $LocalVarQueryParameters['searchFilter'] = $SearchFilter
        }

        if ($Since) {
            $LocalVarQueryParameters['since'] = $Since
        }

        if ($Before) {
            $LocalVarQueryParameters['before'] = $Before
        }

        if ($InboxId) {
            $LocalVarQueryParameters['inboxId'] = $InboxId
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
                                -ReturnType "PageUnknownMissedEmailProjection" `
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

Get MissedEmail

.DESCRIPTION

No description available.

.PARAMETER MissedEmailId
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

MissedEmailDto
#>
function Get-MissedEmail {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${MissedEmailId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-MissedEmail' | Write-Debug
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

        $LocalVarUri = '/missed-emails/{missedEmailId}'
        if (!$MissedEmailId) {
            throw "Error! The required parameter `MissedEmailId` missing when calling getMissedEmail."
        }
        $LocalVarUri = $LocalVarUri.replace('{missedEmailId}', $MissedEmailId)

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
                                -ReturnType "MissedEmailDto" `
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

Restore missed emails

.DESCRIPTION

No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Restore-MissedEmails {
    [CmdletBinding()]
    Param (
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Restore-MissedEmails' | Write-Debug
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
        $LocalVarUri = '/missed-emails/restore'

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

Wait for Nth missed email

.DESCRIPTION

No description available.

.PARAMETER Index
Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index=1

.PARAMETER InboxId
Optional inbox ID filter

.PARAMETER Timeout
Optional timeout milliseconds

.PARAMETER Since
Filter by created at after the given timestamp

.PARAMETER Before
Filter by created at before the given timestamp

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

MissedEmailDto
#>
function Wait-ForNthMissedEmail {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${Index},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${InboxId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${Timeout},
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
        'Calling method: Wait-ForNthMissedEmail' | Write-Debug
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

        $LocalVarUri = '/missed-emails/waitForNthMissedEmail'

        if ($InboxId) {
            $LocalVarQueryParameters['inboxId'] = $InboxId
        }

        if ($Timeout) {
            $LocalVarQueryParameters['timeout'] = $Timeout
        }

        if (!$Index) {
            throw "Error! The required parameter `Index` missing when calling waitForNthMissedEmail."
        }
        $LocalVarQueryParameters['index'] = $Index

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
                                -ReturnType "MissedEmailDto" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

