#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create new random inbox

.DESCRIPTION

No description available.

.PARAMETER AllowTeamAccess
No description available.

.PARAMETER UseDomainPool
No description available.

.PARAMETER ExpiresAt
No description available.

.PARAMETER ExpiresIn
No description available.

.PARAMETER EmailAddress
No description available.

.PARAMETER InboxType
No description available.

.PARAMETER Description
No description available.

.PARAMETER Name
No description available.

.PARAMETER Tags
No description available.

.PARAMETER Favourite
No description available.

.PARAMETER VirtualInbox
No description available.

.PARAMETER UseShortAddress
No description available.

.PARAMETER DomainName
No description available.

.PARAMETER DomainId
No description available.

.PARAMETER Prefix
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

InboxDto
#>
function New-NewEmailAddress {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${AllowTeamAccess},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${UseDomainPool},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${ExpiresAt},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${ExpiresIn},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("HTTP_INBOX", "SMTP_INBOX")]
        [String]
        ${InboxType},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Description},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Name},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${Tags},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Favourite},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${VirtualInbox},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${UseShortAddress},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${DomainName},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${DomainId},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Prefix},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-NewEmailAddress' | Write-Debug
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

        $LocalVarUri = '/newEmailAddress'

        if ($AllowTeamAccess) {
            $LocalVarQueryParameters['allowTeamAccess'] = $AllowTeamAccess
        }

        if ($UseDomainPool) {
            $LocalVarQueryParameters['useDomainPool'] = $UseDomainPool
        }

        if ($ExpiresAt) {
            $LocalVarQueryParameters['expiresAt'] = $ExpiresAt
        }

        if ($ExpiresIn) {
            $LocalVarQueryParameters['expiresIn'] = $ExpiresIn
        }

        if ($EmailAddress) {
            $LocalVarQueryParameters['emailAddress'] = $EmailAddress
        }

        if ($InboxType) {
            $LocalVarQueryParameters['inboxType'] = $InboxType
        }

        if ($Description) {
            $LocalVarQueryParameters['description'] = $Description
        }

        if ($Name) {
            $LocalVarQueryParameters['name'] = $Name
        }

        if ($Tags) {
            $LocalVarQueryParameters['tags'] = $Tags
        }

        if ($Favourite) {
            $LocalVarQueryParameters['favourite'] = $Favourite
        }

        if ($VirtualInbox) {
            $LocalVarQueryParameters['virtualInbox'] = $VirtualInbox
        }

        if ($UseShortAddress) {
            $LocalVarQueryParameters['useShortAddress'] = $UseShortAddress
        }

        if ($DomainName) {
            $LocalVarQueryParameters['domainName'] = $DomainName
        }

        if ($DomainId) {
            $LocalVarQueryParameters['domainId'] = $DomainId
        }

        if ($Prefix) {
            $LocalVarQueryParameters['prefix'] = $Prefix
        }

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
                                -ReturnType "InboxDto" `
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

Create new random inbox

.DESCRIPTION

No description available.

.PARAMETER AllowTeamAccess
No description available.

.PARAMETER UseDomainPool
No description available.

.PARAMETER ExpiresAt
No description available.

.PARAMETER ExpiresIn
No description available.

.PARAMETER EmailAddress
No description available.

.PARAMETER InboxType
No description available.

.PARAMETER Description
No description available.

.PARAMETER Name
No description available.

.PARAMETER Tags
No description available.

.PARAMETER Favourite
No description available.

.PARAMETER VirtualInbox
No description available.

.PARAMETER UseShortAddress
No description available.

.PARAMETER DomainName
No description available.

.PARAMETER DomainId
No description available.

.PARAMETER Prefix
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

InboxDto
#>
function New-RandomInbox {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${AllowTeamAccess},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${UseDomainPool},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${ExpiresAt},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int64]]
        ${ExpiresIn},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${EmailAddress},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("HTTP_INBOX", "SMTP_INBOX")]
        [String]
        ${InboxType},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Description},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Name},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${Tags},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Favourite},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${VirtualInbox},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${UseShortAddress},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${DomainName},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${DomainId},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Prefix},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-RandomInbox' | Write-Debug
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

        $LocalVarUri = '/createInbox'

        if ($AllowTeamAccess) {
            $LocalVarQueryParameters['allowTeamAccess'] = $AllowTeamAccess
        }

        if ($UseDomainPool) {
            $LocalVarQueryParameters['useDomainPool'] = $UseDomainPool
        }

        if ($ExpiresAt) {
            $LocalVarQueryParameters['expiresAt'] = $ExpiresAt
        }

        if ($ExpiresIn) {
            $LocalVarQueryParameters['expiresIn'] = $ExpiresIn
        }

        if ($EmailAddress) {
            $LocalVarQueryParameters['emailAddress'] = $EmailAddress
        }

        if ($InboxType) {
            $LocalVarQueryParameters['inboxType'] = $InboxType
        }

        if ($Description) {
            $LocalVarQueryParameters['description'] = $Description
        }

        if ($Name) {
            $LocalVarQueryParameters['name'] = $Name
        }

        if ($Tags) {
            $LocalVarQueryParameters['tags'] = $Tags
        }

        if ($Favourite) {
            $LocalVarQueryParameters['favourite'] = $Favourite
        }

        if ($VirtualInbox) {
            $LocalVarQueryParameters['virtualInbox'] = $VirtualInbox
        }

        if ($UseShortAddress) {
            $LocalVarQueryParameters['useShortAddress'] = $UseShortAddress
        }

        if ($DomainName) {
            $LocalVarQueryParameters['domainName'] = $DomainName
        }

        if ($DomainId) {
            $LocalVarQueryParameters['domainId'] = $DomainId
        }

        if ($Prefix) {
            $LocalVarQueryParameters['prefix'] = $Prefix
        }

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
                                -ReturnType "InboxDto" `
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

Delete inbox email address by inbox id

.DESCRIPTION

No description available.

.PARAMETER InboxId
ID of inbox to delete

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-DeleteEmailAddress {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${InboxId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DeleteEmailAddress' | Write-Debug
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
        $LocalVarUri = '/deleteEmailAddress'

        if (!$InboxId) {
            throw "Error! The required parameter `InboxId` missing when calling deleteEmailAddress."
        }
        $LocalVarQueryParameters['inboxId'] = $InboxId

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

Delete all emails in an inbox

.DESCRIPTION

No description available.

.PARAMETER InboxId
ID of inbox to empty

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-EmptyInbox {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${InboxId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-EmptyInbox' | Write-Debug
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
        $LocalVarUri = '/emptyInbox'

        if (!$InboxId) {
            throw "Error! The required parameter `InboxId` missing when calling emptyInbox."
        }
        $LocalVarQueryParameters['inboxId'] = $InboxId

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

Send an email using query parameters

.DESCRIPTION

No description available.

.PARAMETER To
Email address to send to

.PARAMETER SenderId
ID of inbox to send from. If null an inbox will be created for sending

.PARAMETER Body
Body of the email message. Supports HTML

.PARAMETER Subject
Subject line of the email

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Send-EmailQuery {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${To},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${SenderId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Body},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Subject},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Send-EmailQuery' | Write-Debug
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
        $LocalVarUri = '/sendEmailQuery'

        if ($SenderId) {
            $LocalVarQueryParameters['senderId'] = $SenderId
        }

        if (!$To) {
            throw "Error! The required parameter `To` missing when calling sendEmailQuery."
        }
        $LocalVarQueryParameters['to'] = $To

        if ($Body) {
            $LocalVarQueryParameters['body'] = $Body
        }

        if ($Subject) {
            $LocalVarQueryParameters['subject'] = $Subject
        }

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

Send an email

.DESCRIPTION

No description available.

.PARAMETER SimpleSendEmailOptions
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Send-EmailSimple {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${SimpleSendEmailOptions},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Send-EmailSimple' | Write-Debug
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
        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/sendEmail'

        if (!$SimpleSendEmailOptions) {
            throw "Error! The required parameter `SimpleSendEmailOptions` missing when calling sendEmailSimple."
        }

        $LocalVarBodyParameter = $SimpleSendEmailOptions | ConvertTo-Json -Depth 100

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

