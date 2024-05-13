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

IMAP fetch email result

.PARAMETER Result
No description available.
.OUTPUTS

ImapServerFetchResult<PSCustomObject>
#>

function Initialize-ImapServerFetchResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Result}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ImapServerFetchResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "result" = ${Result}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ImapServerFetchResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to ImapServerFetchResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ImapServerFetchResult<PSCustomObject>
#>
function ConvertFrom-JsonToImapServerFetchResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ImapServerFetchResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ImapServerFetchResult
        $AllProperties = ("result")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "result"))) { #optional property not found
            $Result = $null
        } else {
            $Result = $JsonParameters.PSobject.Properties["result"].value
        }

        $PSO = [PSCustomObject]@{
            "result" = ${Result}
        }

        return $PSO
    }

}

