#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER InboxIds
No description available.
.PARAMETER ExpireBefore
No description available.
.OUTPUTS

FlushExpiredInboxesResult<PSCustomObject>
#>

function Initialize-FlushExpiredInboxesResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${InboxIds},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${ExpireBefore}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => FlushExpiredInboxesResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($InboxIds -eq $null) {
            throw "invalid value for 'InboxIds', 'InboxIds' cannot be null."
        }

        if ($ExpireBefore -eq $null) {
            throw "invalid value for 'ExpireBefore', 'ExpireBefore' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "inboxIds" = ${InboxIds}
            "expireBefore" = ${ExpireBefore}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FlushExpiredInboxesResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to FlushExpiredInboxesResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FlushExpiredInboxesResult<PSCustomObject>
#>
function ConvertFrom-JsonToFlushExpiredInboxesResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => FlushExpiredInboxesResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FlushExpiredInboxesResult
        $AllProperties = ("inboxIds", "expireBefore")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'inboxIds' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'inboxIds' missing."
        } else {
            $InboxIds = $JsonParameters.PSobject.Properties["inboxIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "expireBefore"))) {
            throw "Error! JSON cannot be serialized due to the required property 'expireBefore' missing."
        } else {
            $ExpireBefore = $JsonParameters.PSobject.Properties["expireBefore"].value
        }

        $PSO = [PSCustomObject]@{
            "inboxIds" = ${InboxIds}
            "expireBefore" = ${ExpireBefore}
        }

        return $PSO
    }

}

