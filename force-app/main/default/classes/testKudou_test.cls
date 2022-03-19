@isTest
public with sharing class testKudou_test {

    @isTest
    static void testMultiplication(){
        Dollar five = new Dollar(5);
        Dollar product = five.times(2);
        System.assertEquals(10, product.amount);
        product = five.times(3);
        System.assertEquals(15, product.amount);
    }

    @isTest
    static void testEquality(){
        System.assert(new Dollar(5).equals(new Dollar(5)), 'not equal!');
        System.assertEquals(new Dollar(5).equals(new Dollar(6)), false);
    }
}
