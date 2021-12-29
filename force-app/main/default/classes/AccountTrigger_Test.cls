@isTest
private class AccountTrigger_Test {
    @isTest static void TestCreateNewAccountInBulk() {
        //テスト用のデータを200個作る
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account ' + i);
            accts.add(acct);
        }           
        // Perform Test
        Test.startTest();
        insert accts;                               
        Test.stopTest();
        //  Accountsが200個あるか確認
        List<Account> verifyAccts = [SELECT Id FROM Account];
        System.assertEquals(200, verifyAccts.size());    
        //　Opportunitiesが200個あるか確認
        List<Opportunity> verifyOpps = [SELECT Id FROM Opportunity];                              
        System.assertEquals(200, verifyOpps.size());                             
    }
}