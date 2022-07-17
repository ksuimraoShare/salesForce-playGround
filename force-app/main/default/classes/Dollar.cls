public with sharing class Dollar extends Money{

    public Dollar(Integer amount){
        this.amount = amount;
    }
    
    public Dollar times(Integer multiplier){
        return new Dollar(this.amount * multiplier);
    }
    
    public Boolean equals(Dollar dollar){
        return this.amount == dollar.amount;
    }
}