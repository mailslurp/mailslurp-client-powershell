# ImapMailboxStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The mailbox name. | 
**ReadOnly** | **Boolean** | True if the mailbox is open in read-only mode. | 
**Items** | [**System.Collections.Hashtable**](SystemCollectionsHashtable) | Results map | 
**Flags** | **String[]** | The mailbox flags. | 
**PermanentFlags** | **String[]** | The mailbox permanent flags. | 
**UnseenSeqNum** | **Int64** | The sequence number of the first unseen message in the mailbox. | 
**Messages** | **Int32** | The number of messages in this mailbox. | 
**Recent** | **Int32** | The number of messages not seen since the last time the mailbox was opened. | 
**Unseen** | **Int32** | The number of unread messages. | 
**UidNext** | **Int64** | The next UID. | 
**UidValidity** | **Int32** | Together with a UID, it is a unique identifier for a message. Must be greater than or equal to 1. | 
**AppendLimit** | **Int32** | Per-mailbox limit of message size. Set only if server supports the APPENDLIMIT extension | [optional] 

## Examples

- Prepare the resource
```powershell
$ImapMailboxStatus = Initialize-maislurp-client-powershellImapMailboxStatus  -Name null `
 -ReadOnly null `
 -Items null `
 -Flags null `
 -PermanentFlags null `
 -UnseenSeqNum null `
 -Messages null `
 -Recent null `
 -Unseen null `
 -UidNext null `
 -UidValidity null `
 -AppendLimit null
```

- Convert the resource to JSON
```powershell
$ImapMailboxStatus | ConvertTo-JSON
```

[[Back to Model list]](../README#documentation-for-models) [[Back to API list]](../README#documentation-for-api-endpoints) [[Back to README]](../README)

