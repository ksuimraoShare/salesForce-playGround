@isTest
public with sharing class TestRestrictContactByName {

    // Contact（名前がINVALIDNAMEなやつ）
    @isTest static void TestRestrictContactByNameInvalid() {
      Contact contact = new Contact(LastName='INVALIDNAME');
      system.debug(contact);

      Test.startTest();
      Database.SaveResult result = Database.insert(contact, false);
      Test.stopTest();

      System.assert(!result.isSuccess());
      System.assert(result.getErrors().size() > 0);
      System.assertEquals('The Last Name "' + contact.LastName + '" is not allowed for DML',
                          result.getErrors()[0].getMessage());
    }

    // Contact（名前がINVALIDNAMEじゃないやつ）
    @isTest static void TestRestrictContactByName() {
      Contact contact = new Contact(LastName='OKNAME');

      Test.startTest();
      Database.SaveResult result = Database.insert(contact, false);
      Test.stopTest();

      System.assert(result.isSuccess());
      System.assert(result.getErrors().size() == 0);
    }
}
