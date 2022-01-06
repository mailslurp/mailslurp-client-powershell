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

Options for matching emails in an inbox based on a condition such as `HAS_ATTACHMENTS=TRUE`

.PARAMETER Condition
Condition of an email object that can be used to filter results
.PARAMETER Value
Expected condition value
.OUTPUTS

ConditionOption<PSCustomObject>
#>

function Initialize-ConditionOption {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("HAS_ATTACHMENTS")]
        [String]
        ${Condition},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("TRUE", "FALSE")]
        [String]
        ${Value}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ConditionOption' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "condition" = ${Condition}
            "value" = ${Value}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConditionOption<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConditionOption<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConditionOption<PSCustomObject>
#>
function ConvertFrom-JsonToConditionOption {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ConditionOption' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ConditionOption
        $AllProperties = ("condition", "value")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "condition"))) { #optional property not found
            $Condition = $null
        } else {
            $Condition = $JsonParameters.PSobject.Properties["condition"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "value"))) { #optional property not found
            $Value = $null
        } else {
            $Value = $JsonParameters.PSobject.Properties["value"].value
        }

        $PSO = [PSCustomObject]@{
            "condition" = ${Condition}
            "value" = ${Value}
        }

        return $PSO
    }

}

