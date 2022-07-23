public virtual with sharing class Money {
    @TestVisible protected Integer amount;
    
    public static Money dollar(Integer amount){
        return new Dollar(amount);
    }
    public static Franc franc(Integer amount){
        return new Franc(amount);
    }

    public virtual Money times(Integer multiplier){return new Money();}
    public virtual String currency(){return '';}

    public Boolean equals(Money money){
        return this.amount == money.amount;
    }
}
