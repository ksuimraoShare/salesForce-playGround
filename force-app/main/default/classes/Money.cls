public virtual with sharing class Money {
    @TestVisible protected Integer amount;
    @TestVisible protected String currencyTdd;
    
    public static Money dollar(Integer amount){
        return new Dollar(amount);
    }
    public static Franc franc(Integer amount){
        return new Franc(amount, 'CHF');
    }

    public virtual Money times(Integer multiplier){return new Money();}

    public Boolean equals(Money money){
        return this.amount == money.amount;
    }
}
