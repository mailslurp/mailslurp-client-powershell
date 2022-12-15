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

Collection of items

.PARAMETER Id
No description available.
.PARAMETER VarFrom
No description available.
.PARAMETER UserId
No description available.
.PARAMETER Subject
No description available.
.PARAMETER InboxId
No description available.
.PARAMETER BodyMD5Hash
No description available.
.PARAMETER Bcc
No description available.
.PARAMETER Cc
No description available.
.PARAMETER VirtualSend
No description available.
.PARAMETER Attachments
No description available.
.PARAMETER CreatedAt
No description available.
.PARAMETER To
No description available.
.OUTPUTS

SentEmailProjection<PSCustomObject>
#>

function Initialize-SentEmailProjection {
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
        ${UserId},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InboxId},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${BodyMD5Hash},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Bcc},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Cc},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${VirtualSend},
        [Parameter(Position = 9, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Attachments},
        [Parameter(Position = 10, ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${CreatedAt},
        [Parameter(Position = 11, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${To}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => SentEmailProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($UserId -eq $null) {
            throw "invalid value for 'UserId', 'UserId' cannot be null."
        }

        if ($InboxId -eq $null) {
            throw "invalid value for 'InboxId', 'InboxId' cannot be null."
        }

        if ($Bcc -eq $null) {
            throw "invalid value for 'Bcc', 'Bcc' cannot be null."
        }

        if ($Cc -eq $null) {
            throw "invalid value for 'Cc', 'Cc' cannot be null."
        }

        if ($VirtualSend -eq $null) {
            throw "invalid value for 'VirtualSend', 'VirtualSend' cannot be null."
        }

        if ($Attachments -eq $null) {
            throw "invalid value for 'Attachments', 'Attachments' cannot be null."
        }

        if ($CreatedAt -eq $null) {
            throw "invalid value for 'CreatedAt', 'CreatedAt' cannot be null."
        }

        if ($To -eq $null) {
            throw "invalid value for 'To', 'To' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "from" = ${VarFrom}
            "userId" = ${UserId}
            "subject" = ${Subject}
            "inboxId" = ${InboxId}
            "bodyMD5Hash" = ${BodyMD5Hash}
            "bcc" = ${Bcc}
            "cc" = ${Cc}
            "virtualSend" = ${VirtualSend}
            "attachments" = ${Attachments}
            "createdAt" = ${CreatedAt}
            "to" = ${To}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SentEmailProjection<PSCustomObject>

.DESCRIPTION

Convert from JSON to SentEmailProjection<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SentEmailProjection<PSCustomObject>
#>
function ConvertFrom-JsonToSentEmailProjection {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => SentEmailProjection' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in SentEmailProjection
        $AllProperties = ("id", "from", "userId", "subject", "inboxId", "bodyMD5Hash", "bcc", "cc", "virtualSend", "attachments", "createdAt", "to")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "userId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'userId' missing."
        } else {
            $UserId = $JsonParameters.PSobject.Properties["userId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "inboxId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'inboxId' missing."
        } else {
            $InboxId = $JsonParameters.PSobject.Properties["inboxId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bcc"))) {
            throw "Error! JSON cannot be serialized due to the required property 'bcc' missing."
        } else {
            $Bcc = $JsonParameters.PSobject.Properties["bcc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cc"))) {
            throw "Error! JSON cannot be serialized due to the required property 'cc' missing."
        } else {
            $Cc = $JsonParameters.PSobject.Properties["cc"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "virtualSend"))) {
            throw "Error! JSON cannot be serialized due to the required property 'virtualSend' missing."
        } else {
            $VirtualSend = $JsonParameters.PSobject.Properties["virtualSend"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attachments"))) {
            throw "Error! JSON cannot be serialized due to the required property 'attachments' missing."
        } else {
            $Attachments = $JsonParameters.PSobject.Properties["attachments"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdAt"))) {
            throw "Error! JSON cannot be serialized due to the required property 'createdAt' missing."
        } else {
            $CreatedAt = $JsonParameters.PSobject.Properties["createdAt"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "to"))) {
            throw "Error! JSON cannot be serialized due to the required property 'to' missing."
        } else {
            $To = $JsonParameters.PSobject.Properties["to"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "bodyMD5Hash"))) { #optional property not found
            $BodyMD5Hash = $null
        } else {
            $BodyMD5Hash = $JsonParameters.PSobject.Properties["bodyMD5Hash"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "from" = ${VarFrom}
            "userId" = ${UserId}
            "subject" = ${Subject}
            "inboxId" = ${InboxId}
            "bodyMD5Hash" = ${BodyMD5Hash}
            "bcc" = ${Bcc}
            "cc" = ${Cc}
            "virtualSend" = ${VirtualSend}
            "attachments" = ${Attachments}
            "createdAt" = ${CreatedAt}
            "to" = ${To}
        }

        return $PSO
    }

}

