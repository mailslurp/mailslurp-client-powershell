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

No description available.

.PARAMETER Name
No description available.
.PARAMETER Conditions
No description available.
.PARAMETER Instructions
No description available.
.PARAMETER OutputSchema
No description available.
.OUTPUTS

AITranformCreateOptions<PSCustomObject>
#>

function Initialize-AITranformCreateOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Conditions},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Instructions},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OutputSchema}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => AITranformCreateOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "conditions" = ${Conditions}
            "instructions" = ${Instructions}
            "outputSchema" = ${OutputSchema}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AITranformCreateOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to AITranformCreateOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AITranformCreateOptions<PSCustomObject>
#>
function ConvertFrom-JsonToAITranformCreateOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => AITranformCreateOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AITranformCreateOptions
        $AllProperties = ("name", "conditions", "instructions", "outputSchema")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "conditions"))) { #optional property not found
            $Conditions = $null
        } else {
            $Conditions = $JsonParameters.PSobject.Properties["conditions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "instructions"))) { #optional property not found
            $Instructions = $null
        } else {
            $Instructions = $JsonParameters.PSobject.Properties["instructions"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "outputSchema"))) { #optional property not found
            $OutputSchema = $null
        } else {
            $OutputSchema = $JsonParameters.PSobject.Properties["outputSchema"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "conditions" = ${Conditions}
            "instructions" = ${Instructions}
            "outputSchema" = ${OutputSchema}
        }

        return $PSO
    }

}

