@isTest
public with sharing class MoneyTest {
    @isTest
    private static void testMultiplication(){
        Dollar five = new Dollar(5);

        Dollar product = five.times(2);
        System.assertEquals(10, product.amount);
        
        product = five.times(3);
        System.assertEquals(15, product.amount);
    }
}
