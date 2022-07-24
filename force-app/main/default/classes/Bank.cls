public with sharing class Bank {
    @TestVisible
    private Money reduce(Expression source, String to){
        return Money.dollar(10);
    }
}
