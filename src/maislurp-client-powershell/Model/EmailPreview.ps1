#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Preview of an email message. For full message (including body and attachments) call the `getEmail` or other email endpoints with the provided email ID.

.PARAMETER Attachments
List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension.
.PARAMETER Bcc
List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
.PARAMETER Cc
List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
.PARAMETER CreatedAt
When was the email received by MailSlurp
.PARAMETER VarFrom
Who the email was sent from. An email address - see fromName for the sender name.
.PARAMETER Id
ID of the email entity
.PARAMETER Read
Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks.
.PARAMETER Subject
The subject line of the email message as specified by SMTP subject header
.PARAMETER To
List of `To` recipient email addresses that the email was addressed to. See recipients object for names.
.OUTPUTS

EmailPreview<PSCustomObject>
#>

function Initialize-EmailPreview {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Attachments},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Bcc},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Cc},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedAt},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFrom},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Read},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${To}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => EmailPreview' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "attachments" = ${Attachments}
            "bcc" = ${Bcc}
            "cc" = ${Cc}
            "createdAt" = ${CreatedAt}
            "from" = ${VarFrom}
            "id" = ${Id}
            "read" = ${Read}
            "subject" = ${Subject}
            "to" = ${To}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailPreview<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailPreview<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailPreview<PSCustomObject>
#>
function ConvertFrom-JsonToEmailPreview {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => EmailPreview' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EmailPreview
        $AllProperties = ("attachments", "bcc", "cc", "createdAt", "from", "id", "read", "subject", "to")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attachments"))) { #optional property not found
            $Attachments = $null
        } else {
            $Attachments = $JsonParameters.PSobject.Properties["attachments"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bcc"))) { #optional property not found
            $Bcc = $null
        } else {
            $Bcc = $JsonParameters.PSobject.Properties["bcc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cc"))) { #optional property not found
            $Cc = $null
        } else {
            $Cc = $JsonParameters.PSobject.Properties["cc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) { #optional property not found
            $CreatedAt = $null
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "from"))) { #optional property not found
            $VarFrom = $null
        } else {
            $VarFrom = $JsonParameters.PSobject.Properties["from"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "read"))) { #optional property not found
            $Read = $null
        } else {
            $Read = $JsonParameters.PSobject.Properties["read"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "to"))) { #optional property not found
            $To = $null
        } else {
            $To = $JsonParameters.PSobject.Properties["to"].value
        }

        $PSO = [PSCustomObject]@{
            "attachments" = ${Attachments}
            "bcc" = ${Bcc}
            "cc" = ${Cc}
            "createdAt" = ${CreatedAt}
            "from" = ${VarFrom}
            "id" = ${Id}
            "read" = ${Read}
            "subject" = ${Subject}
            "to" = ${To}
        }

        return $PSO
    }

}

