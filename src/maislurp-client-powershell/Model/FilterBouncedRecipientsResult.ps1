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

Remaining recipients that were filtered to remove bounced recipients

.PARAMETER FilteredRecipients
No description available.
.OUTPUTS

FilterBouncedRecipientsResult<PSCustomObject>
#>

function Initialize-FilterBouncedRecipientsResult {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${FilteredRecipients}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => FilterBouncedRecipientsResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($FilteredRecipients -eq $null) {
            throw "invalid value for 'FilteredRecipients', 'FilteredRecipients' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "filteredRecipients" = ${FilteredRecipients}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to FilterBouncedRecipientsResult<PSCustomObject>

.DESCRIPTION

Convert from JSON to FilterBouncedRecipientsResult<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

FilterBouncedRecipientsResult<PSCustomObject>
#>
function ConvertFrom-JsonToFilterBouncedRecipientsResult {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => FilterBouncedRecipientsResult' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in FilterBouncedRecipientsResult
        $AllProperties = ("filteredRecipients")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'filteredRecipients' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filteredRecipients"))) {
            throw "Error! JSON cannot be serialized due to the required property 'filteredRecipients' missing."
        } else {
            $FilteredRecipients = $JsonParameters.PSobject.Properties["filteredRecipients"].value
        }

        $PSO = [PSCustomObject]@{
            "filteredRecipients" = ${FilteredRecipients}
        }

        return $PSO
    }

}

