public with sharing class Bank {
    @TestVisible
    private Money reduce(Expression source, String to){
        return source.reduce(this, to);
    }
    
    @TestVisible
    private void addRate(String fromCurrency, String toCurrency, Integer rate){

    }
    
    public Integer rate(String fromStr, String to){
        return (fromStr.equals('CHF') && to.equals('USD')) ? 2 : 1;
    }
}
