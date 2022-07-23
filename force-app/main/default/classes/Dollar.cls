public with sharing class Dollar extends Money{
    private String currencyTdd;

    public Dollar(Integer amount){
        this.amount = amount;
        this.currencyTdd = 'USD';
    }
    
    public override Money times(Integer multiplier){
        return new Dollar(this.amount * multiplier);
    }

    public Boolean equals(Dollar dollar){
        return this.amount == dollar.amount;
    }
    
    public override String currency(){
        return this.currencyTdd;
    }
}