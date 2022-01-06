#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Conditions to apply to emails that you are waiting for

.PARAMETER InboxId
No description available.
.PARAMETER Count
Number of results that should match conditions. Either exactly or at least this amount based on the `countType`. If count condition is not met and the timeout has not been reached the `waitFor` method will retry the operation.
.PARAMETER DelayTimeout
Max time in milliseconds to wait between retries if a `timeout` is specified.
.PARAMETER Timeout
Max time in milliseconds to retry the `waitFor` operation until conditions are met.
.PARAMETER UnreadOnly
Apply conditions only to **unread** emails. All emails begin with `read=false`. An email is marked `read=true` when an `EmailDto` representation of it has been returned to the user at least once. For example you have called `getEmail` or `waitForLatestEmail` etc., or you have viewed the email in the dashboard.
.PARAMETER CountType
How result size should be compared with the expected size. Exactly or at-least matching result?
.PARAMETER VarMatches
No description available.
.PARAMETER SortDirection
No description available.
.PARAMETER Since
No description available.
.PARAMETER Before
No description available.
.OUTPUTS

WaitForConditions<PSCustomObject>
#>

function Initialize-WaitForConditions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Count},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int64]]
        ${DelayTimeout},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${Timeout},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UnreadOnly},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EXACTLY", "ATLEAST")]
        [String]
        ${CountType},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${VarMatches},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ASC", "DESC")]
        [String]
        ${SortDirection},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Since},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Before}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => WaitForConditions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Timeout -eq $null) {
            throw "invalid value for 'Timeout', 'Timeout' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "inboxId" = ${InboxId}
            "count" = ${Count}
            "delayTimeout" = ${DelayTimeout}
            "timeout" = ${Timeout}
            "unreadOnly" = ${UnreadOnly}
            "countType" = ${CountType}
            "matches" = ${VarMatches}
            "sortDirection" = ${SortDirection}
            "since" = ${Since}
            "before" = ${Before}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WaitForConditions<PSCustomObject>

.DESCRIPTION

Convert from JSON to WaitForConditions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WaitForConditions<PSCustomObject>
#>
function ConvertFrom-JsonToWaitForConditions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => WaitForConditions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in WaitForConditions
        $AllProperties = ("inboxId", "count", "delayTimeout", "timeout", "unreadOnly", "countType", "matches", "sortDirection", "since", "before")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'timeout' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timeout"))) {
            throw "Error! JSON cannot be serialized due to the required property 'timeout' missing."
        } else {
            $Timeout = $JsonParameters.PSobject.Properties["timeout"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxId"))) { #optional property not found
            $InboxId = $null
        } else {
            $InboxId = $JsonParameters.PSobject.Properties["inboxId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "count"))) { #optional property not found
            $Count = $null
        } else {
            $Count = $JsonParameters.PSobject.Properties["count"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "delayTimeout"))) { #optional property not found
            $DelayTimeout = $null
        } else {
            $DelayTimeout = $JsonParameters.PSobject.Properties["delayTimeout"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unreadOnly"))) { #optional property not found
            $UnreadOnly = $null
        } else {
            $UnreadOnly = $JsonParameters.PSobject.Properties["unreadOnly"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "countType"))) { #optional property not found
            $CountType = $null
        } else {
            $CountType = $JsonParameters.PSobject.Properties["countType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "matches"))) { #optional property not found
            $VarMatches = $null
        } else {
            $VarMatches = $JsonParameters.PSobject.Properties["matches"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sortDirection"))) { #optional property not found
            $SortDirection = $null
        } else {
            $SortDirection = $JsonParameters.PSobject.Properties["sortDirection"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "since"))) { #optional property not found
            $Since = $null
        } else {
            $Since = $JsonParameters.PSobject.Properties["since"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "before"))) { #optional property not found
            $Before = $null
        } else {
            $Before = $JsonParameters.PSobject.Properties["before"].value
        }

        $PSO = [PSCustomObject]@{
            "inboxId" = ${InboxId}
            "count" = ${Count}
            "delayTimeout" = ${DelayTimeout}
            "timeout" = ${Timeout}
            "unreadOnly" = ${UnreadOnly}
            "countType" = ${CountType}
            "matches" = ${VarMatches}
            "sortDirection" = ${SortDirection}
            "since" = ${Since}
            "before" = ${Before}
        }

        return $PSO
    }

}

