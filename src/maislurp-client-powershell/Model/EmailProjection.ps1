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

A compact representation of a full email. Used in list endpoints to keep response sizes low. Body and attachments are not included. To get all fields of the email use the `getEmail` method with the email projection's ID. See `EmailDto` for documentation on projection properties.

.PARAMETER Id
No description available.
.PARAMETER VarFrom
No description available.
.PARAMETER Subject
No description available.
.PARAMETER InboxId
No description available.
.PARAMETER To
No description available.
.PARAMETER Attachments
No description available.
.PARAMETER Bcc
No description available.
.PARAMETER Cc
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER TeamAccess
No description available.
.PARAMETER Read
No description available.
.PARAMETER BodyMD5Hash
No description available.
.PARAMETER BodyExcerpt
No description available.
.OUTPUTS

EmailProjection<PSCustomObject>
#>

function Initialize-EmailProjection {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFrom},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${To},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Attachments},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Bcc},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Cc},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${CreatedAt},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${TeamAccess},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Read},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BodyMD5Hash},
        [Parameter(Position = 12, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BodyExcerpt}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => EmailProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "from" = ${VarFrom}
            "subject" = ${Subject}
            "inboxId" = ${InboxId}
            "to" = ${To}
            "attachments" = ${Attachments}
            "bcc" = ${Bcc}
            "cc" = ${Cc}
            "createdAt" = ${CreatedAt}
            "teamAccess" = ${TeamAccess}
            "read" = ${Read}
            "bodyMD5Hash" = ${BodyMD5Hash}
            "bodyExcerpt" = ${BodyExcerpt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EmailProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to EmailProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EmailProjection<PSCustomObject>
#>
function ConvertFrom-JsonToEmailProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => EmailProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EmailProjection
        $AllProperties = ("id", "from", "subject", "inboxId", "to", "attachments", "bcc", "cc", "createdAt", "teamAccess", "read", "bodyMD5Hash", "bodyExcerpt")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "from"))) { #optional property not found
            $VarFrom = $null
        } else {
            $VarFrom = $JsonParameters.PSobject.Properties["from"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "teamAccess"))) { #optional property not found
            $TeamAccess = $null
        } else {
            $TeamAccess = $JsonParameters.PSobject.Properties["teamAccess"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "read"))) { #optional property not found
            $Read = $null
        } else {
            $Read = $JsonParameters.PSobject.Properties["read"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bodyMD5Hash"))) { #optional property not found
            $BodyMD5Hash = $null
        } else {
            $BodyMD5Hash = $JsonParameters.PSobject.Properties["bodyMD5Hash"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bodyExcerpt"))) { #optional property not found
            $BodyExcerpt = $null
        } else {
            $BodyExcerpt = $JsonParameters.PSobject.Properties["bodyExcerpt"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "from" = ${VarFrom}
            "subject" = ${Subject}
            "inboxId" = ${InboxId}
            "to" = ${To}
            "attachments" = ${Attachments}
            "bcc" = ${Bcc}
            "cc" = ${Cc}
            "createdAt" = ${CreatedAt}
            "teamAccess" = ${TeamAccess}
            "read" = ${Read}
            "bodyMD5Hash" = ${BodyMD5Hash}
            "bodyExcerpt" = ${BodyExcerpt}
        }

        return $PSO
    }

}

