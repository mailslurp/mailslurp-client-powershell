#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create an inbox ruleset

.DESCRIPTION

No description available.

.PARAMETER CreateInboxRulesetOptions
No description available.

.PARAMETER InboxId
Inbox id to attach ruleset to

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

InboxRulesetDto
#>
function New-NewInboxRuleset {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${CreateInboxRulesetOptions},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${InboxId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-NewInboxRuleset' | Write-Debug
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

        $LocalVarUri = '/rulesets'

        if ($InboxId) {
            $LocalVarQueryParameters['inboxId'] = $InboxId
        }

        if (!$CreateInboxRulesetOptions) {
            throw "Error! The required parameter `CreateInboxRulesetOptions` missing when calling createNewInboxRuleset."
        }

        $LocalVarBodyParameter = $CreateInboxRulesetOptions | ConvertTo-Json -Depth 100

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
                                -ReturnType "InboxRulesetDto" `
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

Delete an inbox ruleset

.DESCRIPTION

No description available.

.PARAMETER Id
ID of inbox ruleset

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-DeleteInboxRuleset {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Id},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DeleteInboxRuleset' | Write-Debug
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
        $LocalVarUri = '/rulesets/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling deleteInboxRuleset."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', $Id)

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

Delete inbox rulesets

.DESCRIPTION

No description available.

.PARAMETER InboxId
Optional inbox id to attach ruleset to

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-DeleteInboxRulesets {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${InboxId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DeleteInboxRulesets' | Write-Debug
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
        $LocalVarUri = '/rulesets'

        if ($InboxId) {
            $LocalVarQueryParameters['inboxId'] = $InboxId
        }

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

Get an inbox ruleset

.DESCRIPTION

No description available.

.PARAMETER Id
ID of inbox ruleset

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

InboxRulesetDto
#>
function Get-InboxRuleset {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Id},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-InboxRuleset' | Write-Debug
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

        $LocalVarUri = '/rulesets/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling getInboxRuleset."
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
                                -ReturnType "InboxRulesetDto" `
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

List inbox rulesets

.DESCRIPTION

No description available.

.PARAMETER InboxId
Optional inbox id to get rulesets from

.PARAMETER Page
Optional page index in inbox ruleset list pagination

.PARAMETER Size
Optional page size in inbox ruleset list pagination

.PARAMETER Sort
Optional createdAt sort direction ASC or DESC

.PARAMETER SearchFilter
Optional search filter

.PARAMETER Since
Filter by created at after the given timestamp

.PARAMETER Before
Filter by created at before the given timestamp

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

PageInboxRulesetDto
#>
function Get-InboxRulesets {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${InboxId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Page},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Size},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("ASC", "DESC")]
        [String]
        ${Sort},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SearchFilter},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${Since},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[System.DateTime]]
        ${Before},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-InboxRulesets' | Write-Debug
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

        $LocalVarUri = '/rulesets'

        if ($InboxId) {
            $LocalVarQueryParameters['inboxId'] = $InboxId
        }

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
                                -ReturnType "PageInboxRulesetDto" `
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

Test an inbox ruleset

.DESCRIPTION

No description available.

.PARAMETER Id
ID of inbox ruleset

.PARAMETER InboxRulesetTestOptions
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

InboxRulesetTestResult
#>
function Test-InboxRuleset {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${InboxRulesetTestOptions},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Test-InboxRuleset' | Write-Debug
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

        $LocalVarUri = '/rulesets/{id}/test'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling testInboxRuleset."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', $Id)

        if (!$InboxRulesetTestOptions) {
            throw "Error! The required parameter `InboxRulesetTestOptions` missing when calling testInboxRuleset."
        }

        $LocalVarBodyParameter = $InboxRulesetTestOptions | ConvertTo-Json -Depth 100

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
                                -ReturnType "InboxRulesetTestResult" `
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

Test receiving with inbox rulesets

.DESCRIPTION

No description available.

.PARAMETER TestInboxRulesetReceivingOptions
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

TestInboxRulesetReceivingResult
#>
function Test-InboxRulesetReceiving {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${TestInboxRulesetReceivingOptions},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Test-InboxRulesetReceiving' | Write-Debug
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

        $LocalVarUri = '/rulesets/test-receiving'

        if (!$TestInboxRulesetReceivingOptions) {
            throw "Error! The required parameter `TestInboxRulesetReceivingOptions` missing when calling testInboxRulesetReceiving."
        }

        $LocalVarBodyParameter = $TestInboxRulesetReceivingOptions | ConvertTo-Json -Depth 100

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
                                -ReturnType "TestInboxRulesetReceivingResult" `
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

Test sending with inbox rulesets

.DESCRIPTION

No description available.

.PARAMETER TestInboxRulesetSendingOptions
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

TestInboxRulesetSendingResult
#>
function Test-InboxRulesetSending {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${TestInboxRulesetSendingOptions},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Test-InboxRulesetSending' | Write-Debug
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

        $LocalVarUri = '/rulesets/test-sending'

        if (!$TestInboxRulesetSendingOptions) {
            throw "Error! The required parameter `TestInboxRulesetSendingOptions` missing when calling testInboxRulesetSending."
        }

        $LocalVarBodyParameter = $TestInboxRulesetSendingOptions | ConvertTo-Json -Depth 100

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
                                -ReturnType "TestInboxRulesetSendingResult" `
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

Test inbox rulesets for inbox

.DESCRIPTION

No description available.

.PARAMETER InboxId
ID of inbox

.PARAMETER InboxRulesetTestOptions
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

InboxRulesetTestResult
#>
function Test-InboxRulesetsForInbox {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${InboxId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${InboxRulesetTestOptions},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Test-InboxRulesetsForInbox' | Write-Debug
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

        $LocalVarUri = '/rulesets'

        if (!$InboxId) {
            throw "Error! The required parameter `InboxId` missing when calling testInboxRulesetsForInbox."
        }
        $LocalVarQueryParameters['inboxId'] = $InboxId

        if (!$InboxRulesetTestOptions) {
            throw "Error! The required parameter `InboxRulesetTestOptions` missing when calling testInboxRulesetsForInbox."
        }

        $LocalVarBodyParameter = $InboxRulesetTestOptions | ConvertTo-Json -Depth 100

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
                                -ReturnType "InboxRulesetTestResult" `
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

Test new inbox ruleset

.DESCRIPTION

No description available.

.PARAMETER TestNewInboxRulesetOptions
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

InboxRulesetTestResult
#>
function Test-NewInboxRuleset {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${TestNewInboxRulesetOptions},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Test-NewInboxRuleset' | Write-Debug
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

        $LocalVarUri = '/rulesets'

        if (!$TestNewInboxRulesetOptions) {
            throw "Error! The required parameter `TestNewInboxRulesetOptions` missing when calling testNewInboxRuleset."
        }

        $LocalVarBodyParameter = $TestNewInboxRulesetOptions | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["API_KEY"]) {
            $LocalVarHeaderParameters['API_KEY'] = $Configuration["ApiKey"]["API_KEY"]
            Write-Verbose ("Using API key 'API_KEY' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }

        $LocalVarResult = Invoke-ApiClient -Method 'PATCH' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "InboxRulesetTestResult" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

