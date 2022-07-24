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

        System.assert(Money.Franc(5).equals(Money.Franc(5)));
        System.assert(!Money.Franc(5).equals(Money.Franc(6)));
    }

    @isTest
    private static void testFrancMultiplication(){
        Money five = Money.Franc(5);
        System.assertEquals(Money.Franc(10).amount, five.times(2).amount);
        System.assertEquals(Money.Franc(15).amount, five.times(3).amount);
    }
    
    @isTest
    private static void testCurrency(){
        System.assertEquals('USD', Money.dollar(1).currencyTdd);
        System.assertEquals('CHF', Money.franc(1).currencyTdd);
    }
    
    @isTest
    private static void testDifferentClassEquality(){
        System.assert(new Money(10, 'CHF').equals(new Franc(10, 'CHF')));
    }
}
