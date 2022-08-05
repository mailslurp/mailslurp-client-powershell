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

Meta data associated with an attachment. Attachments are stored as byte blobs so the meta data is stored separately.

.PARAMETER Name
Name of attachment if given
.PARAMETER ContentType
Content type of attachment such as `image/png`
.PARAMETER ContentLength
Size of attachment in bytes
.PARAMETER Id
ID of attachment. Can be used to with attachment controller endpoints to download attachment or with sending methods to attach to an email.
.OUTPUTS

AttachmentMetaData<PSCustomObject>
#>

function Initialize-AttachmentMetaData {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ContentType},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${ContentLength},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => AttachmentMetaData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Name -eq $null) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($ContentType -eq $null) {
            throw "invalid value for 'ContentType', 'ContentType' cannot be null."
        }

        if ($ContentLength -eq $null) {
            throw "invalid value for 'ContentLength', 'ContentLength' cannot be null."
        }

        if ($Id -eq $null) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "contentType" = ${ContentType}
            "contentLength" = ${ContentLength}
            "id" = ${Id}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AttachmentMetaData<PSCustomObject>

.DESCRIPTION

Convert from JSON to AttachmentMetaData<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AttachmentMetaData<PSCustomObject>
#>
function ConvertFrom-JsonToAttachmentMetaData {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => AttachmentMetaData' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AttachmentMetaData
        $AllProperties = ("name", "contentType", "contentLength", "id")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contentType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'contentType' missing."
        } else {
            $ContentType = $JsonParameters.PSobject.Properties["contentType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "contentLength"))) {
            throw "Error! JSON cannot be serialized due to the required property 'contentLength' missing."
        } else {
            $ContentLength = $JsonParameters.PSobject.Properties["contentLength"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "contentType" = ${ContentType}
            "contentLength" = ${ContentLength}
            "id" = ${Id}
        }

        return $PSO
    }

}

