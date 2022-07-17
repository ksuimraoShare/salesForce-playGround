public with sharing class Franc extends Money{

    public Franc(Integer amount){
        this.amount = amount;
    }
    
    public Franc times(Integer multiplier){
        return new Franc(this.amount * multiplier);
    }

    public Boolean equals(Franc franc){
        return this.amount == franc.amount;
    }
}