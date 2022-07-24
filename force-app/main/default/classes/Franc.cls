public with sharing class Franc extends Money{

    public Franc(Integer amount, String currencyTdd){
        super(amount, currencyTdd);
    }
    
    public override Money times(Integer multiplier){
        return new Money(this.amount * multiplier, super.currencyTdd);
    }

    public Boolean equals(Franc franc){
        return this.amount == franc.amount;
    }
}