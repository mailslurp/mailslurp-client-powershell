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

Options for creating a domain to use with MailSlurp. You must have ownership access to this domain in order to verify it. Domains will not functionally currently until the domain has been verified. See https://www.mailslurp.com/guides/custom-domains for help.

.PARAMETER CatchAllInboxId
No description available.
.OUTPUTS

UpdateDomainOptions<PSCustomObject>
#>

function Initialize-UpdateDomainOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CatchAllInboxId}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => UpdateDomainOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "catchAllInboxId" = ${CatchAllInboxId}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to UpdateDomainOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to UpdateDomainOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

UpdateDomainOptions<PSCustomObject>
#>
function ConvertFrom-JsonToUpdateDomainOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => UpdateDomainOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in UpdateDomainOptions
        $AllProperties = ("catchAllInboxId")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "catchAllInboxId"))) { #optional property not found
            $CatchAllInboxId = $null
        } else {
            $CatchAllInboxId = $JsonParameters.PSobject.Properties["catchAllInboxId"].value
        }

        $PSO = [PSCustomObject]@{
            "catchAllInboxId" = ${CatchAllInboxId}
        }

        return $PSO
    }

}

