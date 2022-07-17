public with sharing class Franc {
    public Integer amount;

    public Franc(Integer amount){
        this.amount = amount;
    }
    
    public Franc times(Integer multiplier){
        return new Franc(this.amount * multiplier);
    }
}

