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

.PARAMETER Consented
No description available.
.OUTPUTS

ConsentStatusDto<PSCustomObject>
#>

function Initialize-ConsentStatusDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Consented}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ConsentStatusDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Consented -eq $null) {
            throw "invalid value for 'Consented', 'Consented' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "consented" = ${Consented}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConsentStatusDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConsentStatusDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConsentStatusDto<PSCustomObject>
#>
function ConvertFrom-JsonToConsentStatusDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ConsentStatusDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ConsentStatusDto
        $AllProperties = ("consented")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'consented' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "consented"))) {
            throw "Error! JSON cannot be serialized due to the required property 'consented' missing."
        } else {
            $Consented = $JsonParameters.PSobject.Properties["consented"].value
        }

        $PSO = [PSCustomObject]@{
            "consented" = ${Consented}
        }

        return $PSO
    }

}

