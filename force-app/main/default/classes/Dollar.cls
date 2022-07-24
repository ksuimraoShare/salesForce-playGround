public with sharing class Dollar extends Money{

    public Dollar(Integer amount, String currencyTdd){
        super(amount, currencyTdd);
    }
    
    public override Money times(Integer multiplier){
        return new Money(this.amount * multiplier, super.currencyTdd);
    }

    public Boolean equals(Dollar dollar){
        return this.amount == dollar.amount;
    }
}