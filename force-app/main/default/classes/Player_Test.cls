@IsTest
public with sharing class Player_Test {
    @IsTest
    static void testConstruct(){
        Player player = new Player('name_test');
    }

    @IsTest
    static void accountUniqueTest(){
        Account account = new account();
        account.Name = 'test';
        account.uniqueTest__c = '1';
        insert account;
    }

    @IsTest
    static void accountUniqueTest2(){
        Account account = new account();
        account.Name = 'test';
        account.uniqueTest__c = '1';
        insert account;
    }

public static String createRandomNumStr(){
    String result = '';
    Decimal randomNum = Decimal.valueOf(Math.random()) * 10000;
    Decimal randomNumRounded = randomNum.round(System.RoundingMode.HALF_EVEN);
    result = String.valueOf(randomNumRounded);
    return result;
}
}
