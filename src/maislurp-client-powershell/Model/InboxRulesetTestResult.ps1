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

.PARAMETER RulesetMatches
Map of inbox ruleset ID to boolean of if target matches
.PARAMETER VarMatches
No description available.
.OUTPUTS

InboxRulesetTestResult<PSCustomObject>
#>

function Initialize-InboxRulesetTestResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${RulesetMatches},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${VarMatches}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => InboxRulesetTestResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($RulesetMatches -eq $null) {
            throw "invalid value for 'RulesetMatches', 'RulesetMatches' cannot be null."
        }

        if ($VarMatches -eq $null) {
            throw "invalid value for 'VarMatches', 'VarMatches' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "rulesetMatches" = ${RulesetMatches}
            "matches" = ${VarMatches}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InboxRulesetTestResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to InboxRulesetTestResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InboxRulesetTestResult<PSCustomObject>
#>
function ConvertFrom-JsonToInboxRulesetTestResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => InboxRulesetTestResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in InboxRulesetTestResult
        $AllProperties = ("rulesetMatches", "matches")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'rulesetMatches' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "rulesetMatches"))) {
            throw "Error! JSON cannot be serialized due to the required property 'rulesetMatches' missing."
        } else {
            $RulesetMatches = $JsonParameters.PSobject.Properties["rulesetMatches"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "matches"))) {
            throw "Error! JSON cannot be serialized due to the required property 'matches' missing."
        } else {
            $VarMatches = $JsonParameters.PSobject.Properties["matches"].value
        }

        $PSO = [PSCustomObject]@{
            "rulesetMatches" = ${RulesetMatches}
            "matches" = ${VarMatches}
        }

        return $PSO
    }

}

