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

Recipients of original email in thread

.PARAMETER To
No description available.
.PARAMETER Cc
No description available.
.PARAMETER Bcc
No description available.
.OUTPUTS

EmailRecipientsProjection<PSCustomObject>
#>

function Initialize-EmailRecipientsProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${To},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Cc},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Bcc}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => EmailRecipientsProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "to" = ${To}
            "cc" = ${Cc}
            "bcc" = ${Bcc}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailRecipientsProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailRecipientsProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailRecipientsProjection<PSCustomObject>
#>
function ConvertFrom-JsonToEmailRecipientsProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => EmailRecipientsProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EmailRecipientsProjection
        $AllProperties = ("to", "cc", "bcc")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "to"))) { #optional property not found
            $To = $null
        } else {
            $To = $JsonParameters.PSobject.Properties["to"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cc"))) { #optional property not found
            $Cc = $null
        } else {
            $Cc = $JsonParameters.PSobject.Properties["cc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bcc"))) { #optional property not found
            $Bcc = $null
        } else {
            $Bcc = $JsonParameters.PSobject.Properties["bcc"].value
        }

        $PSO = [PSCustomObject]@{
            "to" = ${To}
            "cc" = ${Cc}
            "bcc" = ${Bcc}
        }

        return $PSO
    }

}

