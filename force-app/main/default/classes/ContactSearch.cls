public with sharing class ContactSearch {

    public static List<Contact> searchForContacts(String aLastName, String aPostalCode){
        List<Contact> contactList = [SELECT Name FROM Contact WHERE LastName = :aLastName AND MailingPostalCode = :aPostalCode];

        return contactList;
    }
}