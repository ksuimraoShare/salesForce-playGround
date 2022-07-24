public with sharing class Franc extends Money{

    public Franc(Integer amount, String currencyTdd){
        super(amount, currencyTdd);
    }
    
    public Boolean equals(Franc franc){
        return this.amount == franc.amount;
    }
}