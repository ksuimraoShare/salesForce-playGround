public with sharing class Dollar extends Money{

    public Dollar(Integer amount, String currencyTdd){
        this.amount = amount;
        super.currencyTdd = currencyTdd;
    }
    
    public override Money times(Integer multiplier){
        return Money.Dollar(this.amount * multiplier);
    }

    public Boolean equals(Dollar dollar){
        return this.amount == dollar.amount;
    }
}