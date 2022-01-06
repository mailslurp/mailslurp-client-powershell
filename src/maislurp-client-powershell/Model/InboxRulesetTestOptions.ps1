#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER TestTarget
No description available.
.OUTPUTS

InboxRulesetTestOptions<PSCustomObject>
#>

function Initialize-InboxRulesetTestOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TestTarget}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => InboxRulesetTestOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "testTarget" = ${TestTarget}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InboxRulesetTestOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to InboxRulesetTestOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InboxRulesetTestOptions<PSCustomObject>
#>
function ConvertFrom-JsonToInboxRulesetTestOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => InboxRulesetTestOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in InboxRulesetTestOptions
        $AllProperties = ("testTarget")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "testTarget"))) { #optional property not found
            $TestTarget = $null
        } else {
            $TestTarget = $JsonParameters.PSobject.Properties["testTarget"].value
        }

        $PSO = [PSCustomObject]@{
            "testTarget" = ${TestTarget}
        }

        return $PSO
    }

}

