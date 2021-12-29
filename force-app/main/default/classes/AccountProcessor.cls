public with sharing class AccountProcessor {
    @future
    public static void countContacts(List<Id> accountIdList) {
        List<Account> accountList = [SELECT Number_Of_Contacts__c FROM Account WHERE Id IN :accountIdList];
        for(Account tmpAccount : accountList){
            List<Contact> contactList = [SELECT Id FROM Contact WHERE AccountId = :tmpAccount.Id];
            System.debug('-------------------------------');
            System.debug(Logginglevel.WARN,contactList);
            System.debug('-------------------------------');
            tmpAccount.Number_Of_Contacts__c = contactList.size();
        }
        update accountList;
    }
}
