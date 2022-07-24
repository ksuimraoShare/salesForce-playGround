public virtual with sharing class Money {
    @TestVisible protected Integer amount;
    @TestVisible protected String currencyTdd;
    
    //引数が空のコンストラクタがないとコンパイルエラーになるので、定義してある
    public Money(){}
    
    public Money(Integer amount, String currencyTdd){
        this.amount = amount;
        this.currencyTdd = currencyTdd;
    }
    
    public static Money dollar(Integer amount){
        return new Dollar(amount, 'USD');
    }
    public static Franc franc(Integer amount){
        return new Franc(amount, 'CHF');
    }

    public virtual Money times(Integer multiplier){return new Money(null, null);}

    public Boolean equals(Money money){
        return this.amount == money.amount
            && this.currencyTdd == money.currencyTdd;
    }
}
