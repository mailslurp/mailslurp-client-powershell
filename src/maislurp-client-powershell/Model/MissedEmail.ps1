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

No description available.

.PARAMETER Id
No description available.
.PARAMETER UserId
No description available.
.PARAMETER Subject
No description available.
.PARAMETER BodyExcerpt
No description available.
.PARAMETER AttachmentCount
No description available.
.PARAMETER VarFrom
No description available.
.PARAMETER To
No description available.
.PARAMETER Cc
No description available.
.PARAMETER Bcc
No description available.
.PARAMETER InboxIds
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER UpdatedAt
No description available.
.OUTPUTS

MissedEmail<PSCustomObject>
#>

function Initialize-MissedEmail {
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
        ${Subject},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BodyExcerpt},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${AttachmentCount},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFrom},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${To},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Cc},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Bcc},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${InboxIds},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${UpdatedAt}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => MissedEmail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($AttachmentCount -eq $null) {
            throw "invalid value for 'AttachmentCount', 'AttachmentCount' cannot be null."
        }

        if ($To -eq $null) {
            throw "invalid value for 'To', 'To' cannot be null."
        }

        if ($Cc -eq $null) {
            throw "invalid value for 'Cc', 'Cc' cannot be null."
        }

        if ($Bcc -eq $null) {
            throw "invalid value for 'Bcc', 'Bcc' cannot be null."
        }

        if ($InboxIds -eq $null) {
            throw "invalid value for 'InboxIds', 'InboxIds' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($UpdatedAt -eq $null) {
            throw "invalid value for 'UpdatedAt', 'UpdatedAt' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "userId" = ${UserId}
            "subject" = ${Subject}
            "bodyExcerpt" = ${BodyExcerpt}
            "attachmentCount" = ${AttachmentCount}
            "from" = ${VarFrom}
            "to" = ${To}
            "cc" = ${Cc}
            "bcc" = ${Bcc}
            "inboxIds" = ${InboxIds}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MissedEmail<PSCustomObject>

.DESCRIPTION

Convert from JSON to MissedEmail<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MissedEmail<PSCustomObject>
#>
function ConvertFrom-JsonToMissedEmail {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => MissedEmail' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in MissedEmail
        $AllProperties = ("id", "userId", "subject", "bodyExcerpt", "attachmentCount", "from", "to", "cc", "bcc", "inboxIds", "createdAt", "updatedAt")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'attachmentCount' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attachmentCount"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attachmentCount' missing."
        } else {
            $AttachmentCount = $JsonParameters.PSobject.Properties["attachmentCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "to"))) {
            throw "Error! JSON cannot be serialized due to the required property 'to' missing."
        } else {
            $To = $JsonParameters.PSobject.Properties["to"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cc"))) {
            throw "Error! JSON cannot be serialized due to the required property 'cc' missing."
        } else {
            $Cc = $JsonParameters.PSobject.Properties["cc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bcc"))) {
            throw "Error! JSON cannot be serialized due to the required property 'bcc' missing."
        } else {
            $Bcc = $JsonParameters.PSobject.Properties["bcc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxIds"))) {
            throw "Error! JSON cannot be serialized due to the required property 'inboxIds' missing."
        } else {
            $InboxIds = $JsonParameters.PSobject.Properties["inboxIds"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "updatedAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'updatedAt' missing."
        } else {
            $UpdatedAt = $JsonParameters.PSobject.Properties["updatedAt"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bodyExcerpt"))) { #optional property not found
            $BodyExcerpt = $null
        } else {
            $BodyExcerpt = $JsonParameters.PSobject.Properties["bodyExcerpt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "from"))) { #optional property not found
            $VarFrom = $null
        } else {
            $VarFrom = $JsonParameters.PSobject.Properties["from"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "userId" = ${UserId}
            "subject" = ${Subject}
            "bodyExcerpt" = ${BodyExcerpt}
            "attachmentCount" = ${AttachmentCount}
            "from" = ${VarFrom}
            "to" = ${To}
            "cc" = ${Cc}
            "bcc" = ${Bcc}
            "inboxIds" = ${InboxIds}
            "createdAt" = ${CreatedAt}
            "updatedAt" = ${UpdatedAt}
        }

        return $PSO
    }

}

