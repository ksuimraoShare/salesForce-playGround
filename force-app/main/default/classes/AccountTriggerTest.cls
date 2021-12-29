@isTest
private class AccountTriggerTest {
	
    @isTest static void TestCreateAccounts() {
        // テスト用のデータを200件作成
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + i, BillingState = 'CA', ShippingState = 'CA');
            accts.add(acct);
        }      
                
        // Perform Test
        Test.startTest();
        insert accts;         
        Test.stopTest();
        
        // Verify that 200 new Accounts were inserted
        List<Account> verifyAccts = [SELECT Id FROM Account WHERE ShippingState = 'CA'];
        System.assertEquals(200, verifyAccts.size());
                                
    }
    
}