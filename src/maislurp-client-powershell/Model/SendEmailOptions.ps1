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

Options for sending an email message from an inbox. You must provide one of: `to`, `toGroup`, or `toContacts` to send an email. All other parameters are optional. 

.PARAMETER Attachments
Optional list of attachment IDs to send with this email. You must first upload each attachment separately in order to obtain attachment IDs. This way you can reuse attachments with different emails once uploaded.
.PARAMETER Bcc
Optional list of bcc destination email addresses
.PARAMETER Body
Optional contents of email. If body contains HTML then set `isHTML` to true to ensure that email clients render it correctly. You can use moustache template syntax in the email body in conjunction with `toGroup` contact variables or `templateVariables` data. If you need more templating control consider creating a template and using the `template` property instead of the body.
.PARAMETER Cc
Optional list of cc destination email addresses
.PARAMETER Charset
Optional charset
.PARAMETER VarFrom
Optional from address. Email address is RFC 5322 format and may include a display name and email in angle brackets (`my@address.com` or `My inbox <my@address.com>`). If no sender is set the source inbox address will be used for this field. Beware of potential spam penalties when setting this field to an address not used by the inbox. For custom email addresses use a custom domain.
.PARAMETER Html
Optional HTML flag (Deprecated: use isHTML instead)
.PARAMETER IsHTML
Optional HTML flag. If true the `content-type` of the email will be `text/html`. Set to true when sending HTML to ensure proper rending on email clients
.PARAMETER ReplyTo
Optional replyTo header
.PARAMETER SendStrategy
Optional strategy to use when sending the email
.PARAMETER Subject
Optional email subject line
.PARAMETER Template
Optional template ID to use for body. Will override body if provided. When using a template make sure you pass the corresponding map of `templateVariables`. You can find which variables are needed by fetching the template itself or viewing it in the dashboard.
.PARAMETER TemplateVariables
Optional map of template variables. Will replace moustache syntax variables in subject and body or template with the associated values if found.
.PARAMETER To
List of destination email addresses. Even single recipients must be in array form. Maximum recipients per email depends on your plan. If you need to send many emails try using contacts or contact groups or use a non standard sendStrategy to ensure that spam filters are not triggered (many recipients in one email can affect your spam rating).
.PARAMETER ToContacts
Optional list of contact IDs to send email to. Manage your contacts via the API or dashboard. When contacts are used the email is sent to each contact separately so they will not see other recipients.
.PARAMETER ToGroup
Optional contact group ID to send email to. You can create contacts and contact groups in the API or dashboard and use them for email campaigns. When contact groups are used the email is sent to each contact separately so they will not see other recipients
.PARAMETER UseInboxName
Use name of inbox as sender email address name. Will construct RFC 5322 email address with `Inbox name <inbox@address.com>`
.OUTPUTS

SendEmailOptions<PSCustomObject>
#>

function Initialize-SendEmailOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Attachments},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Bcc},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Body},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Cc},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Charset},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFrom},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Html},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsHTML},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReplyTo},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SINGLE_MESSAGE")]
        [String]
        ${SendStrategy},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Template},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${TemplateVariables},
        [Parameter(Position = 13, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${To},
        [Parameter(Position = 14, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${ToContacts},
        [Parameter(Position = 15, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ToGroup},
        [Parameter(Position = 16, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UseInboxName}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => SendEmailOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "attachments" = ${Attachments}
            "bcc" = ${Bcc}
            "body" = ${Body}
            "cc" = ${Cc}
            "charset" = ${Charset}
            "from" = ${VarFrom}
            "html" = ${Html}
            "isHTML" = ${IsHTML}
            "replyTo" = ${ReplyTo}
            "sendStrategy" = ${SendStrategy}
            "subject" = ${Subject}
            "template" = ${Template}
            "templateVariables" = ${TemplateVariables}
            "to" = ${To}
            "toContacts" = ${ToContacts}
            "toGroup" = ${ToGroup}
            "useInboxName" = ${UseInboxName}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SendEmailOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to SendEmailOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SendEmailOptions<PSCustomObject>
#>
function ConvertFrom-JsonToSendEmailOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => SendEmailOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SendEmailOptions
        $AllProperties = ("attachments", "bcc", "body", "cc", "charset", "from", "html", "isHTML", "replyTo", "sendStrategy", "subject", "template", "templateVariables", "to", "toContacts", "toGroup", "useInboxName")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "body"))) { #optional property not found
            $Body = $null
        } else {
            $Body = $JsonParameters.PSobject.Properties["body"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cc"))) { #optional property not found
            $Cc = $null
        } else {
            $Cc = $JsonParameters.PSobject.Properties["cc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "charset"))) { #optional property not found
            $Charset = $null
        } else {
            $Charset = $JsonParameters.PSobject.Properties["charset"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "from"))) { #optional property not found
            $VarFrom = $null
        } else {
            $VarFrom = $JsonParameters.PSobject.Properties["from"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "html"))) { #optional property not found
            $Html = $null
        } else {
            $Html = $JsonParameters.PSobject.Properties["html"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isHTML"))) { #optional property not found
            $IsHTML = $null
        } else {
            $IsHTML = $JsonParameters.PSobject.Properties["isHTML"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "replyTo"))) { #optional property not found
            $ReplyTo = $null
        } else {
            $ReplyTo = $JsonParameters.PSobject.Properties["replyTo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sendStrategy"))) { #optional property not found
            $SendStrategy = $null
        } else {
            $SendStrategy = $JsonParameters.PSobject.Properties["sendStrategy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "template"))) { #optional property not found
            $Template = $null
        } else {
            $Template = $JsonParameters.PSobject.Properties["template"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "templateVariables"))) { #optional property not found
            $TemplateVariables = $null
        } else {
            $TemplateVariables = $JsonParameters.PSobject.Properties["templateVariables"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "to"))) { #optional property not found
            $To = $null
        } else {
            $To = $JsonParameters.PSobject.Properties["to"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "toContacts"))) { #optional property not found
            $ToContacts = $null
        } else {
            $ToContacts = $JsonParameters.PSobject.Properties["toContacts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "toGroup"))) { #optional property not found
            $ToGroup = $null
        } else {
            $ToGroup = $JsonParameters.PSobject.Properties["toGroup"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "useInboxName"))) { #optional property not found
            $UseInboxName = $null
        } else {
            $UseInboxName = $JsonParameters.PSobject.Properties["useInboxName"].value
        }

        $PSO = [PSCustomObject]@{
            "attachments" = ${Attachments}
            "bcc" = ${Bcc}
            "body" = ${Body}
            "cc" = ${Cc}
            "charset" = ${Charset}
            "from" = ${VarFrom}
            "html" = ${Html}
            "isHTML" = ${IsHTML}
            "replyTo" = ${ReplyTo}
            "sendStrategy" = ${SendStrategy}
            "subject" = ${Subject}
            "template" = ${Template}
            "templateVariables" = ${TemplateVariables}
            "to" = ${To}
            "toContacts" = ${ToContacts}
            "toGroup" = ${ToGroup}
            "useInboxName" = ${UseInboxName}
        }

        return $PSO
    }

}

