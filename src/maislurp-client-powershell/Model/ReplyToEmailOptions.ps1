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

Options for replying to email with API

.PARAMETER Body
Body of the reply email you want to send
.PARAMETER VarFrom
The from header that should be used. Optional
.PARAMETER ReplyTo
The replyTo header that should be used. Optional
.PARAMETER Charset
The charset that your message should be sent with. Optional. Default is UTF-8
.PARAMETER Attachments
List of uploaded attachments to send with the reply. Optional.
.PARAMETER TemplateVariables
Template variables if using a template
.PARAMETER Template
Template ID to use instead of body. Will use template variable map to fill defined variable slots.
.PARAMETER SendStrategy
How an email should be sent based on its recipients
.PARAMETER UseInboxName
Optionally use inbox name as display name for sender email address
.PARAMETER Html
No description available.
.OUTPUTS

ReplyToEmailOptions<PSCustomObject>
#>

function Initialize-ReplyToEmailOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Body},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFrom},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReplyTo},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Charset},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Attachments},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${TemplateVariables},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Template},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SINGLE_MESSAGE")]
        [String]
        ${SendStrategy},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UseInboxName},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Html}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ReplyToEmailOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "body" = ${Body}
            "from" = ${VarFrom}
            "replyTo" = ${ReplyTo}
            "charset" = ${Charset}
            "attachments" = ${Attachments}
            "templateVariables" = ${TemplateVariables}
            "template" = ${Template}
            "sendStrategy" = ${SendStrategy}
            "useInboxName" = ${UseInboxName}
            "html" = ${Html}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ReplyToEmailOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to ReplyToEmailOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ReplyToEmailOptions<PSCustomObject>
#>
function ConvertFrom-JsonToReplyToEmailOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ReplyToEmailOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ReplyToEmailOptions
        $AllProperties = ("body", "from", "replyTo", "charset", "attachments", "templateVariables", "template", "sendStrategy", "useInboxName", "html")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "body"))) { #optional property not found
            $Body = $null
        } else {
            $Body = $JsonParameters.PSobject.Properties["body"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "from"))) { #optional property not found
            $VarFrom = $null
        } else {
            $VarFrom = $JsonParameters.PSobject.Properties["from"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "replyTo"))) { #optional property not found
            $ReplyTo = $null
        } else {
            $ReplyTo = $JsonParameters.PSobject.Properties["replyTo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "charset"))) { #optional property not found
            $Charset = $null
        } else {
            $Charset = $JsonParameters.PSobject.Properties["charset"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attachments"))) { #optional property not found
            $Attachments = $null
        } else {
            $Attachments = $JsonParameters.PSobject.Properties["attachments"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "templateVariables"))) { #optional property not found
            $TemplateVariables = $null
        } else {
            $TemplateVariables = $JsonParameters.PSobject.Properties["templateVariables"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "template"))) { #optional property not found
            $Template = $null
        } else {
            $Template = $JsonParameters.PSobject.Properties["template"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sendStrategy"))) { #optional property not found
            $SendStrategy = $null
        } else {
            $SendStrategy = $JsonParameters.PSobject.Properties["sendStrategy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "useInboxName"))) { #optional property not found
            $UseInboxName = $null
        } else {
            $UseInboxName = $JsonParameters.PSobject.Properties["useInboxName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "html"))) { #optional property not found
            $Html = $null
        } else {
            $Html = $JsonParameters.PSobject.Properties["html"].value
        }

        $PSO = [PSCustomObject]@{
            "body" = ${Body}
            "from" = ${VarFrom}
            "replyTo" = ${ReplyTo}
            "charset" = ${Charset}
            "attachments" = ${Attachments}
            "templateVariables" = ${TemplateVariables}
            "template" = ${Template}
            "sendStrategy" = ${SendStrategy}
            "useInboxName" = ${UseInboxName}
            "html" = ${Html}
        }

        return $PSO
    }

}

