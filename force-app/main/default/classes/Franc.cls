public with sharing class Franc extends Money{

    public Franc(Integer amount){
        this.amount = amount;
    }
    
    public override Money times(Integer multiplier){
        return new Franc(this.amount * multiplier);
    }

    public Boolean equals(Franc franc){
        return this.amount == franc.amount;
    }

    public override String currency(){
        return 'CHF';
    }
}