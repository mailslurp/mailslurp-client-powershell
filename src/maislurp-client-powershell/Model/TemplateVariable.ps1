#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails and SMS from dynamically allocated email addresses and phone numbers. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://docs.mailslurp.com/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Variable for use with email template

.PARAMETER Name
Name of variable. This can be used in a template as {{name}}
.PARAMETER VariableType
The type of variable
.OUTPUTS

TemplateVariable<PSCustomObject>
#>

function Initialize-TemplateVariable {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("STRING")]
        [String]
        ${VariableType}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => TemplateVariable' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Name -eq $null) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($VariableType -eq $null) {
            throw "invalid value for 'VariableType', 'VariableType' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "variableType" = ${VariableType}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TemplateVariable<PSCustomObject>

.DESCRIPTION

Convert from JSON to TemplateVariable<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TemplateVariable<PSCustomObject>
#>
function ConvertFrom-JsonToTemplateVariable {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => TemplateVariable' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in TemplateVariable
        $AllProperties = ("name", "variableType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "variableType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'variableType' missing."
        } else {
            $VariableType = $JsonParameters.PSobject.Properties["variableType"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "variableType" = ${VariableType}
        }

        return $PSO
    }

}

