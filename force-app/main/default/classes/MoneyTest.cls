@isTest
public with sharing class MoneyTest {
    @isTest
    private static void testMultiplication(){
        Money five = Money.dollar(5);
        System.assertEquals(Money.Dollar(10).amount, five.times(2).amount);
        System.assertEquals(Money.Dollar(15).amount, five.times(3).amount);
    }
    
    @isTest
    private static void testEquality(){
        System.assert(Money.Dollar(5).equals(Money.Dollar(5)));
        System.assert(!Money.Dollar(5).equals(Money.Dollar(6)));

        System.assert(new Franc(5).equals(new Franc(5)));
        System.assert(!new Franc(5).equals(new Franc(6)));
    }

    @isTest
    private static void testFrancMultiplication(){
        Franc five = new Franc(5);
        System.assertEquals(new Franc(10).amount, five.times(2).amount);
        System.assertEquals(new Franc(15).amount, five.times(3).amount);
    }
}
