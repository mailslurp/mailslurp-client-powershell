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

Result of search for inbox by name

.PARAMETER InboxId
No description available.
.PARAMETER Exists
No description available.
.OUTPUTS

InboxByNameResult<PSCustomObject>
#>

function Initialize-InboxByNameResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Exists}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => InboxByNameResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Exists -eq $null) {
            throw "invalid value for 'Exists', 'Exists' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "inboxId" = ${InboxId}
            "exists" = ${Exists}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InboxByNameResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to InboxByNameResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InboxByNameResult<PSCustomObject>
#>
function ConvertFrom-JsonToInboxByNameResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => InboxByNameResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in InboxByNameResult
        $AllProperties = ("inboxId", "exists")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'exists' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "exists"))) {
            throw "Error! JSON cannot be serialized due to the required property 'exists' missing."
        } else {
            $Exists = $JsonParameters.PSobject.Properties["exists"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxId"))) { #optional property not found
            $InboxId = $null
        } else {
            $InboxId = $JsonParameters.PSobject.Properties["inboxId"].value
        }

        $PSO = [PSCustomObject]@{
            "inboxId" = ${InboxId}
            "exists" = ${Exists}
        }

        return $PSO
    }

}
