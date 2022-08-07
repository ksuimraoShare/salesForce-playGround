public with sharing class Bank {
    private Map<Pair, Integer> rates = new Map<Pair,Integer>();

    @TestVisible
    private Money reduce(Expression source, String to){
        return source.reduce(this, to);
    }
    
    @TestVisible
    private void addRate(String fromCurrency, String toCurrency, Integer rate){
        this.rates.put(new Pair(fromCurrency, toCurrency), rate);
    }
    
    public Integer rate(String fromCurrency, String toCurrency){
        if(fromCurrency.equals(toCurrency)) return 1;
        return this.rates.get(new Pair(fromCurrency, toCurrency));
    }
}
