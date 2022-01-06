#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository
# Version: 6.5.2
# Contact: contact@mailslurp.dev
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Email entity (also known as EmailDto). When an SMTP email message is received by MailSlurp it is parsed. The body and attachments are written to disk and the fields such as to, from, subject etc are stored in a database. The `body` contains the email content. If you want the original SMTP message see the `getRawEmail` endpoints. The attachments can be fetched using the AttachmentController

.PARAMETER Id
ID of the email entity
.PARAMETER UserId
ID of user that email belongs to
.PARAMETER InboxId
ID of the inbox that received the email
.PARAMETER To
List of `To` recipient email addresses that the email was addressed to. See recipients object for names.
.PARAMETER VarFrom
Who the email was sent from. An email address - see fromName for the sender name.
.PARAMETER VarSender
No description available.
.PARAMETER Recipients
No description available.
.PARAMETER ReplyTo
The `replyTo` field on the received email message
.PARAMETER Cc
List of `CC` recipients email addresses that the email was addressed to. See recipients object for names.
.PARAMETER Bcc
List of `BCC` recipients email addresses that the email was addressed to. See recipients object for names.
.PARAMETER Headers
Collection of SMTP headers attached to email
.PARAMETER Attachments
List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension.
.PARAMETER Subject
The subject line of the email message as specified by SMTP subject header
.PARAMETER Body
The body of the email message as text parsed from the SMTP message body (does not include attachments). Fetch the raw content to access the SMTP message and use the attachments property to access attachments. The body is stored separately to the email entity so the body is not returned in paginated results only in full single email or wait requests.
.PARAMETER BodyExcerpt
An excerpt of the body of the email message for quick preview .
.PARAMETER BodyMD5Hash
A hash signature of the email message using MD5. Useful for comparing emails without fetching full body.
.PARAMETER Charset
Detected character set of the email body such as UTF-8
.PARAMETER Analysis
No description available.
.PARAMETER CreatedAt
When was the email received by MailSlurp
.PARAMETER UpdatedAt
When was the email last updated
.PARAMETER Read
Read flag. Has the email ever been viewed in the dashboard or fetched via the API with a hydrated body? If so the email is marked as read. Paginated results do not affect read status. Read status is different to email opened event as it depends on your own account accessing the email. Email opened is determined by tracking pixels sent to other uses if enable during sending. You can listened for both email read and email opened events using webhooks.
.PARAMETER TeamAccess
Can the email be accessed by organization team members
.PARAMETER Html
No description available.
.OUTPUTS

Email<PSCustomObject>
#>

function Initialize-Email {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${UserId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${To},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFrom},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${VarSender},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Recipients},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReplyTo},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Cc},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Bcc},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Headers},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Attachments},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Body},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BodyExcerpt},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BodyMD5Hash},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Charset},
        [Parameter(Position = 17, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Analysis},
        [Parameter(Position = 18, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedAt},
        [Parameter(Position = 19, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${UpdatedAt},
        [Parameter(Position = 20, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Read},
        [Parameter(Position = 21, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${TeamAccess},
        [Parameter(Position = 22, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Html}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => Email' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "userId" = ${UserId}
            "inboxId" = ${InboxId}
            "to" = ${To}
            "from" = ${VarFrom}
            "sender" = ${VarSender}
            "recipients" = ${Recipients}
            "replyTo" = ${ReplyTo}
            "cc" = ${Cc}
            "bcc" = ${Bcc}
            "headers" = ${Headers}
            "attachments" = ${Attachments}
            "subject" = ${Subject}
            "body" = ${Body}
            "bodyExcerpt" = ${BodyExcerpt}
            "bodyMD5Hash" = ${BodyMD5Hash}
            "charset" = ${Charset}
            "analysis" = ${Analysis}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
            "read" = ${Read}
            "teamAccess" = ${TeamAccess}
            "html" = ${Html}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Email<PSCustomObject>

.DESCRIPTION

Convert from JSON to Email<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Email<PSCustomObject>
#>
function ConvertFrom-JsonToEmail {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => Email' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in Email
        $AllProperties = ("id", "userId", "inboxId", "to", "from", "sender", "recipients", "replyTo", "cc", "bcc", "headers", "attachments", "subject", "body", "bodyExcerpt", "bodyMD5Hash", "charset", "analysis", "createdAt", "updatedAt", "read", "teamAccess", "html")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) { #optional property not found
            $UserId = $null
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxId"))) { #optional property not found
            $InboxId = $null
        } else {
            $InboxId = $JsonParameters.PSobject.Properties["inboxId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "to"))) { #optional property not found
            $To = $null
        } else {
            $To = $JsonParameters.PSobject.Properties["to"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "from"))) { #optional property not found
            $VarFrom = $null
        } else {
            $VarFrom = $JsonParameters.PSobject.Properties["from"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sender"))) { #optional property not found
            $VarSender = $null
        } else {
            $VarSender = $JsonParameters.PSobject.Properties["sender"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recipients"))) { #optional property not found
            $Recipients = $null
        } else {
            $Recipients = $JsonParameters.PSobject.Properties["recipients"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "replyTo"))) { #optional property not found
            $ReplyTo = $null
        } else {
            $ReplyTo = $JsonParameters.PSobject.Properties["replyTo"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "headers"))) { #optional property not found
            $Headers = $null
        } else {
            $Headers = $JsonParameters.PSobject.Properties["headers"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attachments"))) { #optional property not found
            $Attachments = $null
        } else {
            $Attachments = $JsonParameters.PSobject.Properties["attachments"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "body"))) { #optional property not found
            $Body = $null
        } else {
            $Body = $JsonParameters.PSobject.Properties["body"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bodyExcerpt"))) { #optional property not found
            $BodyExcerpt = $null
        } else {
            $BodyExcerpt = $JsonParameters.PSobject.Properties["bodyExcerpt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bodyMD5Hash"))) { #optional property not found
            $BodyMD5Hash = $null
        } else {
            $BodyMD5Hash = $JsonParameters.PSobject.Properties["bodyMD5Hash"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "charset"))) { #optional property not found
            $Charset = $null
        } else {
            $Charset = $JsonParameters.PSobject.Properties["charset"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "analysis"))) { #optional property not found
            $Analysis = $null
        } else {
            $Analysis = $JsonParameters.PSobject.Properties["analysis"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) { #optional property not found
            $CreatedAt = $null
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updatedAt"))) { #optional property not found
            $UpdatedAt = $null
        } else {
            $UpdatedAt = $JsonParameters.PSobject.Properties["updatedAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "read"))) { #optional property not found
            $Read = $null
        } else {
            $Read = $JsonParameters.PSobject.Properties["read"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "teamAccess"))) { #optional property not found
            $TeamAccess = $null
        } else {
            $TeamAccess = $JsonParameters.PSobject.Properties["teamAccess"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "html"))) { #optional property not found
            $Html = $null
        } else {
            $Html = $JsonParameters.PSobject.Properties["html"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "userId" = ${UserId}
            "inboxId" = ${InboxId}
            "to" = ${To}
            "from" = ${VarFrom}
            "sender" = ${VarSender}
            "recipients" = ${Recipients}
            "replyTo" = ${ReplyTo}
            "cc" = ${Cc}
            "bcc" = ${Bcc}
            "headers" = ${Headers}
            "attachments" = ${Attachments}
            "subject" = ${Subject}
            "body" = ${Body}
            "bodyExcerpt" = ${BodyExcerpt}
            "bodyMD5Hash" = ${BodyMD5Hash}
            "charset" = ${Charset}
            "analysis" = ${Analysis}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
            "read" = ${Read}
            "teamAccess" = ${TeamAccess}
            "html" = ${Html}
        }

        return $PSO
    }

}

