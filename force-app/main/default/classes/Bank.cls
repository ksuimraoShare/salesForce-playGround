public with sharing class Bank {
    @TestVisible
    private Money reduce(Expression source, String to){
        Sum sum = (Sum) source;
        return sum.reduce(to);
    }
}
