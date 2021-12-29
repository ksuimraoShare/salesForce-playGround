public with sharing class ContactAndLeadSearch {

    public static List<List<SObject>> searchContactsAndLeads(String aNamePart){
        List<List<SObject>> resultList= [FIND :aNamePart IN ALL FIELDS 
                   RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName)];
                   
        return resultList;
    }
}