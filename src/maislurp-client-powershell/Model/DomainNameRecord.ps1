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

DNS Record required for verification of a domain

.PARAMETER Name
No description available.
.PARAMETER RecordEntries
No description available.
.PARAMETER RecordType
No description available.
.PARAMETER Ttl
No description available.
.OUTPUTS

DomainNameRecord<PSCustomObject>
#>

function Initialize-DomainNameRecord {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${RecordEntries},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("A", "NS", "MD", "MF", "CNAME", "SOA", "MB", "MG", "MR", "NULL", "WKS", "PTR", "HINFO", "MINFO", "MX", "TXT", "RP", "AFSDB", "X25", "ISDN", "RT", "NSAP", "NSAP_PTR", "SIG", "KEY", "PX", "GPOS", "AAAA", "LOC", "NXT", "EID", "NIMLOC", "SRV", "ATMA", "NAPTR", "KX", "CERT", "A6", "DNAME", "SINK", "OPT", "APL", "DS", "SSHFP", "IPSECKEY", "RRSIG", "NSEC", "DNSKEY", "DHCID", "NSEC3", "NSEC3PARAM", "TLSA", "SMIMEA", "HIP", "NINFO", "RKEY", "TALINK", "CDS", "CDNSKEY", "OPENPGPKEY", "CSYNC", "ZONEMD", "SVCB", "HTTPS", "SPF", "UINFO", "UID", "GID", "UNSPEC", "NID", "L32", "L64", "LP", "EUI48", "EUI64", "TKEY", "TSIG", "IXFR", "AXFR", "MAILB", "MAILA", "ANY", "URI", "CAA", "AVC", "DOA", "AMTRELAY", "TA", "DLV")]
        [String]
        ${RecordType},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Int64]
        ${Ttl}
    )

    Process {
        'Creating PSCustomObject: maislurp-client-powershell => DomainNameRecord' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($Name -eq $null) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($RecordEntries -eq $null) {
            throw "invalid value for 'RecordEntries', 'RecordEntries' cannot be null."
        }

        if ($RecordType -eq $null) {
            throw "invalid value for 'RecordType', 'RecordType' cannot be null."
        }

        if ($Ttl -eq $null) {
            throw "invalid value for 'Ttl', 'Ttl' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "recordEntries" = ${RecordEntries}
            "recordType" = ${RecordType}
            "ttl" = ${Ttl}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to DomainNameRecord<PSCustomObject>

.DESCRIPTION

Convert from JSON to DomainNameRecord<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

DomainNameRecord<PSCustomObject>
#>
function ConvertFrom-JsonToDomainNameRecord {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: maislurp-client-powershell => DomainNameRecord' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in DomainNameRecord
        $AllProperties = ("name", "recordEntries", "recordType", "ttl")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recordEntries"))) {
            throw "Error! JSON cannot be serialized due to the required property 'recordEntries' missing."
        } else {
            $RecordEntries = $JsonParameters.PSobject.Properties["recordEntries"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "recordType"))) {
            throw "Error! JSON cannot be serialized due to the required property 'recordType' missing."
        } else {
            $RecordType = $JsonParameters.PSobject.Properties["recordType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ttl"))) {
            throw "Error! JSON cannot be serialized due to the required property 'ttl' missing."
        } else {
            $Ttl = $JsonParameters.PSobject.Properties["ttl"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "recordEntries" = ${RecordEntries}
            "recordType" = ${RecordType}
            "ttl" = ${Ttl}
        }

        return $PSO
    }

}

