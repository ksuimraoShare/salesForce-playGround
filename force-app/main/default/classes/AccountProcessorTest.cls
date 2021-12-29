@isTest
public class AccountProcessorTest {
    @isTest static void TestCountContacts() {
        List<Account> accts = new List<Account>();
        List<Id> acctIds = new List<Id>();
        List<Contact> contacts = new List<Contact>();

        for(Integer i=0; i < 10; i++) {
            Account acct = new Account(Name='Test Account ' + i);
            accts.add(acct);
        }
        insert accts;
        
        for(Account tmpAcct : accts){
            Contact contact = new Contact(AccountId = tmpAcct.id, LastName = 'Test LastName ' + tmpAcct.id);
            contacts.add(contact);
            acctIds.add(tmpAcct.id);
        }
        insert contacts;

        Test.startTest();
        AccountProcessor.countContacts(acctIds);         
        Test.stopTest();

        List<Account> updatedAccts = [SELECT Number_Of_Contacts__c FROM Account WHERE Id IN :acctIds];
        System.assertEquals(updatedAccts[0].Number_Of_Contacts__c, 1);
    }
}
