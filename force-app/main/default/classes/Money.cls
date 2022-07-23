public virtual with sharing class Money {
    @TestVisible protected Integer amount;
    
    public static Dollar dollar(Integer amount){
        return new Dollar(amount);
    }
    public virtual Money times(Integer multiplier){return new Money();}
}
