public with sharing class Franc extends Money{
    private String currencyTdd;

    public Franc(Integer amount){
        this.amount = amount;
        this.currencyTdd = 'CHF';
    }
    
    public override Money times(Integer multiplier){
        return new Franc(this.amount * multiplier);
    }

    public Boolean equals(Franc franc){
        return this.amount == franc.amount;
    }

    public override String currency(){
        return this.currencyTdd;
    }
}