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

.PARAMETER VarMatches
No description available.
.PARAMETER DoesMatch
No description available.
.OUTPUTS

InboxForwarderTestResult<PSCustomObject>
#>

function Initialize-InboxForwarderTestResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarMatches},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${DoesMatch}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => InboxForwarderTestResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($VarMatches -eq $null) {
            throw "invalid value for 'VarMatches', 'VarMatches' cannot be null."
        }

        if ($DoesMatch -eq $null) {
            throw "invalid value for 'DoesMatch', 'DoesMatch' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "matches" = ${VarMatches}
            "doesMatch" = ${DoesMatch}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InboxForwarderTestResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to InboxForwarderTestResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InboxForwarderTestResult<PSCustomObject>
#>
function ConvertFrom-JsonToInboxForwarderTestResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => InboxForwarderTestResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in InboxForwarderTestResult
        $AllProperties = ("matches", "doesMatch")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'matches' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "matches"))) {
            throw "Error! JSON cannot be serialized due to the required property 'matches' missing."
        } else {
            $VarMatches = $JsonParameters.PSobject.Properties["matches"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "doesMatch"))) {
            throw "Error! JSON cannot be serialized due to the required property 'doesMatch' missing."
        } else {
            $DoesMatch = $JsonParameters.PSobject.Properties["doesMatch"].value
        }

        $PSO = [PSCustomObject]@{
            "matches" = ${VarMatches}
            "doesMatch" = ${DoesMatch}
        }

        return $PSO
    }

}

