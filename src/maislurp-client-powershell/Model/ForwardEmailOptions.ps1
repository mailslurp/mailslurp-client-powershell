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

Options for forwarding an email

.PARAMETER To
To recipients for forwarded email
.PARAMETER Subject
Subject for forwarded email
.PARAMETER Cc
Optional cc recipients
.PARAMETER Bcc
Optional bcc recipients
.PARAMETER VarFrom
Optional from override
.PARAMETER UseInboxName
Optionally use inbox name as display name for sender email address
.PARAMETER FilterBouncedRecipients
Filter recipients to remove any bounced recipients from to, bcc, and cc before sending
.OUTPUTS

ForwardEmailOptions<PSCustomObject>
#>

function Initialize-ForwardEmailOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${To},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Cc},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Bcc},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFrom},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${UseInboxName},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${FilterBouncedRecipients}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ForwardEmailOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($To -eq $null) {
            throw "invalid value for 'To', 'To' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "to" = ${To}
            "subject" = ${Subject}
            "cc" = ${Cc}
            "bcc" = ${Bcc}
            "from" = ${VarFrom}
            "useInboxName" = ${UseInboxName}
            "filterBouncedRecipients" = ${FilterBouncedRecipients}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ForwardEmailOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to ForwardEmailOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ForwardEmailOptions<PSCustomObject>
#>
function ConvertFrom-JsonToForwardEmailOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ForwardEmailOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ForwardEmailOptions
        $AllProperties = ("to", "subject", "cc", "bcc", "from", "useInboxName", "filterBouncedRecipients")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'to' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "to"))) {
            throw "Error! JSON cannot be serialized due to the required property 'to' missing."
        } else {
            $To = $JsonParameters.PSobject.Properties["to"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "from"))) { #optional property not found
            $VarFrom = $null
        } else {
            $VarFrom = $JsonParameters.PSobject.Properties["from"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "useInboxName"))) { #optional property not found
            $UseInboxName = $null
        } else {
            $UseInboxName = $JsonParameters.PSobject.Properties["useInboxName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filterBouncedRecipients"))) { #optional property not found
            $FilterBouncedRecipients = $null
        } else {
            $FilterBouncedRecipients = $JsonParameters.PSobject.Properties["filterBouncedRecipients"].value
        }

        $PSO = [PSCustomObject]@{
            "to" = ${To}
            "subject" = ${Subject}
            "cc" = ${Cc}
            "bcc" = ${Bcc}
            "from" = ${VarFrom}
            "useInboxName" = ${UseInboxName}
            "filterBouncedRecipients" = ${FilterBouncedRecipients}
        }

        return $PSO
    }

}

