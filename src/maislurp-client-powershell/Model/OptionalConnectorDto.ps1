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

.PARAMETER Present
No description available.
.PARAMETER Result
No description available.
.OUTPUTS

OptionalConnectorDto<PSCustomObject>
#>

function Initialize-OptionalConnectorDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Present},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Result}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => OptionalConnectorDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Present -eq $null) {
            throw "invalid value for 'Present', 'Present' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "present" = ${Present}
            "result" = ${Result}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to OptionalConnectorDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to OptionalConnectorDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

OptionalConnectorDto<PSCustomObject>
#>
function ConvertFrom-JsonToOptionalConnectorDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => OptionalConnectorDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in OptionalConnectorDto
        $AllProperties = ("present", "result")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'present' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "present"))) {
            throw "Error! JSON cannot be serialized due to the required property 'present' missing."
        } else {
            $Present = $JsonParameters.PSobject.Properties["present"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "result"))) { #optional property not found
            $Result = $null
        } else {
            $Result = $JsonParameters.PSobject.Properties["result"].value
        }

        $PSO = [PSCustomObject]@{
            "present" = ${Present}
            "result" = ${Result}
        }

        return $PSO
    }

}

