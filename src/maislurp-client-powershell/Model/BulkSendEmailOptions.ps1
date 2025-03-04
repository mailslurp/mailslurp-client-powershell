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

Options for bulk sending an email from multiple addresses. See regular `sendEmail` methods for more information.

.PARAMETER InboxIds
Inboxes to send the email from
.PARAMETER SendEmailOptions
No description available.
.OUTPUTS

BulkSendEmailOptions<PSCustomObject>
#>

function Initialize-BulkSendEmailOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${InboxIds},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${SendEmailOptions}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => BulkSendEmailOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($InboxIds -eq $null) {
            throw "invalid value for 'InboxIds', 'InboxIds' cannot be null."
        }

        if ($SendEmailOptions -eq $null) {
            throw "invalid value for 'SendEmailOptions', 'SendEmailOptions' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "inboxIds" = ${InboxIds}
            "sendEmailOptions" = ${SendEmailOptions}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to BulkSendEmailOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to BulkSendEmailOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

BulkSendEmailOptions<PSCustomObject>
#>
function ConvertFrom-JsonToBulkSendEmailOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => BulkSendEmailOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BulkSendEmailOptions
        $AllProperties = ("inboxIds", "sendEmailOptions")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'inboxIds' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'inboxIds' missing."
        } else {
            $InboxIds = $JsonParameters.PSobject.Properties["inboxIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sendEmailOptions"))) {
            throw "Error! JSON cannot be serialized due to the required property 'sendEmailOptions' missing."
        } else {
            $SendEmailOptions = $JsonParameters.PSobject.Properties["sendEmailOptions"].value
        }

        $PSO = [PSCustomObject]@{
            "inboxIds" = ${InboxIds}
            "sendEmailOptions" = ${SendEmailOptions}
        }

        return $PSO
    }

}

