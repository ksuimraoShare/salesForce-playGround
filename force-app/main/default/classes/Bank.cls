public with sharing class Bank {
    @TestVisible
    private Money reduce(Expression source, String to){
        return source.reduce(to);
    }
    
    @TestVisible
    private void addRate(String fromCurrency, String toCurrency, Integer rate){

    }
}
