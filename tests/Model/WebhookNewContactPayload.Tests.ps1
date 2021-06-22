#
# MailSlurp API
# MailSlurp is an API for sending and receiving emails from dynamically allocated email addresses. It's designed for developers and QA teams to test applications, process inbound emails, send templated notifications, attachments, and more.  ## Resources  - [Homepage](https://www.mailslurp.com) - Get an [API KEY](https://app.mailslurp.com/sign-up/) - Generated [SDK Clients](https://www.mailslurp.com/docs/) - [Examples](https://github.com/mailslurp/examples) repository 
# Version: 6.5.2
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

Describe -tag 'maislurp-client-powershell' -name 'WebhookNewContactPayload' {
    Context 'WebhookNewContactPayload' {
        It 'Initialize-WebhookNewContactPayload' {
            # a simple test to create an object
            #$NewObject = Initialize-WebhookNewContactPayload -Company "TEST_VALUE" -ContactId "TEST_VALUE" -CreatedAt "TEST_VALUE" -EmailAddresses "TEST_VALUE" -EventName "TEST_VALUE" -FirstName "TEST_VALUE" -GroupId "TEST_VALUE" -LastName "TEST_VALUE" -MessageId "TEST_VALUE" -MetaData "TEST_VALUE" -OptOut "TEST_VALUE" -PrimaryEmailAddress "TEST_VALUE" -Tags "TEST_VALUE" -WebhookId "TEST_VALUE" -WebhookName "TEST_VALUE"
            #$NewObject | Should -BeOfType WebhookNewContactPayload
            #$NewObject.property | Should -Be 0
        }
    }
}
