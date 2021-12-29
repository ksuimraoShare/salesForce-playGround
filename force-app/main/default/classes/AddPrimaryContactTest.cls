@isTest
public with sharing class AddPrimaryContactTest {

    @testSetup
    static void setup() {
        Contact contact = new Contact(LastName='cloneTargetContact');
        insert contact;

        List<Account> insertAccts = new List<Account>();
        for(Integer i = 0; i < 100; i++){
            Account tmpAcct = new Account();
            tmpAcct.Name = 'test' + String.valueOf(i);

            if(i < 50){
                tmpAcct.BillingState = 'NY';
            }
            else{
                tmpAcct.BillingState = 'CA';
            }
            insertAccts.add(tmpAcct);
        }
        insert insertAccts;
    }

    static testmethod void testQueueable() {
        List<Contact> contacts = [SELECT LastName FROM Contact WHERE LastName = 'cloneTargetContact'];
        AddPrimaryContact testTargetInstance = new AddPrimaryContact(contacts[0], 'CA');

        Test.startTest();
        System.enqueueJob(testTargetInstance);
        Test.stopTest();

        for (Account tmpAcct : [SELECT Id FROM Account WHERE BillingState = 'CA']) {
            System.assertEquals(1, [SELECT count() FROM Contact WHERE AccountId = :tmpAcct.Id]);
        }
    }
}
