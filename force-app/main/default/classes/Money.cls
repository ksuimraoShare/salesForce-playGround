public virtual with sharing class Money implements Expression{
    @TestVisible protected Integer amount;
    @TestVisible protected String currencyTdd;
    
    //引数が空のコンストラクタがないとコンパイルエラーになるので、定義してある
    public Money(){}
    
    public Money(Integer amount, String currencyTdd){
        this.amount = amount;
        this.currencyTdd = currencyTdd;
    }
    
    public static Money dollar(Integer amount){
        return new Money(amount, 'USD');
    }
    public static Money franc(Integer amount){
        return new Money(amount, 'CHF');
    }

    @TestVisible
    private Money times(Integer multiplier){
        return new Money(this.amount * multiplier, this.currencyTdd);
    }

    public Boolean equals(Money money){
        return this.amount == money.amount
            && this.currencyTdd == money.currencyTdd;
    }
    
    @TestVisible
    private Expression plus(Money addend){
        return new Sum(this, addend);
    }
}
