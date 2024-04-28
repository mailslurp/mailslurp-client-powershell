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

IMAP server search options

.PARAMETER SeqNum
No description available.
.PARAMETER Uid
No description available.
.PARAMETER Since
No description available.
.PARAMETER Before
No description available.
.PARAMETER SentSince
No description available.
.PARAMETER SentBefore
No description available.
.PARAMETER Header
No description available.
.PARAMETER Body
No description available.
.PARAMETER Text
No description available.
.PARAMETER WithFlags
No description available.
.PARAMETER WithoutFlags
No description available.
.OUTPUTS

ImapServerSearchOptions<PSCustomObject>
#>

function Initialize-ImapServerSearchOptions {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SeqNum},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uid},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Since},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Before},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${SentSince},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${SentBefore},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Header},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Body},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Text},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${WithFlags},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${WithoutFlags}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => ImapServerSearchOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "seqNum" = ${SeqNum}
            "uid" = ${Uid}
            "since" = ${Since}
            "before" = ${Before}
            "sentSince" = ${SentSince}
            "sentBefore" = ${SentBefore}
            "header" = ${Header}
            "body" = ${Body}
            "text" = ${Text}
            "withFlags" = ${WithFlags}
            "withoutFlags" = ${WithoutFlags}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ImapServerSearchOptions<PSCustomObject>

.DESCRIPTION

Convert from JSON to ImapServerSearchOptions<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ImapServerSearchOptions<PSCustomObject>
#>
function ConvertFrom-JsonToImapServerSearchOptions {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => ImapServerSearchOptions' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ImapServerSearchOptions
        $AllProperties = ("seqNum", "uid", "since", "before", "sentSince", "sentBefore", "header", "body", "text", "withFlags", "withoutFlags")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "seqNum"))) { #optional property not found
            $SeqNum = $null
        } else {
            $SeqNum = $JsonParameters.PSobject.Properties["seqNum"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uid"))) { #optional property not found
            $Uid = $null
        } else {
            $Uid = $JsonParameters.PSobject.Properties["uid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "since"))) { #optional property not found
            $Since = $null
        } else {
            $Since = $JsonParameters.PSobject.Properties["since"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "before"))) { #optional property not found
            $Before = $null
        } else {
            $Before = $JsonParameters.PSobject.Properties["before"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sentSince"))) { #optional property not found
            $SentSince = $null
        } else {
            $SentSince = $JsonParameters.PSobject.Properties["sentSince"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sentBefore"))) { #optional property not found
            $SentBefore = $null
        } else {
            $SentBefore = $JsonParameters.PSobject.Properties["sentBefore"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "header"))) { #optional property not found
            $Header = $null
        } else {
            $Header = $JsonParameters.PSobject.Properties["header"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "body"))) { #optional property not found
            $Body = $null
        } else {
            $Body = $JsonParameters.PSobject.Properties["body"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "text"))) { #optional property not found
            $Text = $null
        } else {
            $Text = $JsonParameters.PSobject.Properties["text"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "withFlags"))) { #optional property not found
            $WithFlags = $null
        } else {
            $WithFlags = $JsonParameters.PSobject.Properties["withFlags"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "withoutFlags"))) { #optional property not found
            $WithoutFlags = $null
        } else {
            $WithoutFlags = $JsonParameters.PSobject.Properties["withoutFlags"].value
        }

        $PSO = [PSCustomObject]@{
            "seqNum" = ${SeqNum}
            "uid" = ${Uid}
            "since" = ${Since}
            "before" = ${Before}
            "sentSince" = ${SentSince}
            "sentBefore" = ${SentBefore}
            "header" = ${Header}
            "body" = ${Body}
            "text" = ${Text}
            "withFlags" = ${WithFlags}
            "withoutFlags" = ${WithoutFlags}
        }

        return $PSO
    }

}
