@isTest
public with sharing class Franc_test {
    @isTest
    static void testFrancMultiplication(){
        Franc five = new Franc(5);
        Franc product = five.times(2);
        System.assertEquals(10, product.amount);
        product = five.times(3);
        System.assertEquals(15, product.amount);
    }
}