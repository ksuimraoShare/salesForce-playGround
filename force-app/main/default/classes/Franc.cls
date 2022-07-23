public with sharing class Franc extends Money{

    public Franc(Integer amount, String currencyTdd){
        this.amount = amount;
        super.currencyTdd = 'CHF';
    }
    
    public override Money times(Integer multiplier){
        return Money.Franc(this.amount * multiplier, null);
    }

    public Boolean equals(Franc franc){
        return this.amount == franc.amount;
    }
}