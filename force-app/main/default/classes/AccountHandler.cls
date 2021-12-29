public with sharing class AccountHandler {

    public static Account insertNewAccount(String aAccountName) {
        Account acct = new Account(Name = aAccountName);

        try{
            insert acct;
        }catch(DmlException e){
            return null;
        }

        return acct;
    }
}
