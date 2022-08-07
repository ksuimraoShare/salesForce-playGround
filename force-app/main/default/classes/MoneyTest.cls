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
    }

    @isTest
    private static void testCurrency(){
        System.assertEquals('USD', Money.dollar(1).currencyTdd);
        System.assertEquals('CHF', Money.franc(1).currencyTdd);
    }
    
    @isTest
    private static void testSimpleAddition(){
        Money five = Money.dollar(5);

        Expression sum = five.plus(five);
        Bank bank = new Bank();

        Money reduced = bank.reduce(sum, 'USD');
        System.assert(Money.Dollar(10).equals(reduced));
    }
    
    @isTest
    private static void testPlusReturnsSum(){
        Money five = Money.dollar(5);
        Expression result = five.plus(five);
        Sum sum = (Sum) result;
        System.assertEquals(five, sum.augend);
        System.assertEquals(five, sum.addend);
    }
    
    @isTest
    private static void testReduceSum(){
        Expression sum = new Sum(Money.dollar(3), Money.dollar(4));
        Bank bank = new Bank();
        Money result = bank.reduce(sum, 'USD');
        System.assert(Money.Dollar(7).equals(result));
    }
    
    @isTest
    private static void testReduceMoney(){
        Bank bank = new Bank();
        Money result = bank.reduce(Money.dollar(1),'USD');
        System.assert(Money.Dollar(1).equals(result));
    }
    
    @isTest
    private static void testReduceMoneyDifferentCurrency(){
        Bank bank = new Bank();
        bank.addRate('CHF', 'USD', 2);
        Money result = bank.reduce(Money.franc(2), 'USD');
        System.assert(Money.Dollar(1).equals(result));
    }
    
    @isTest
    private static void testArrayEquals(){
        System.assertEquals(new List<String>{'abc'}, new List<String>{'abc'});
    }
}
