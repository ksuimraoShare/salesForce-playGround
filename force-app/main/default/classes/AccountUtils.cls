public class AccountUtils {
    public static List<Account> accountsByState(String BillingState){
        List<Account> accountList = new List<Account>();
        
        accountList = [SELECT ID,
                       		  Name
                       FROM Account
                       WHERE BillingState = :BillingState
                       ];
        
        return accountList;
    }
}