public with sharing class Sum implements Expression{
    @TestVisible public Money augend {get; private set;}
    @TestVisible public Money addend {get; private set;}
    
    public Sum(Money augend, Money addend){
        this.augend = augend;
        this.addend = addend;
    }
    
    public Money reduce(Bank bank, String to){
        Integer amount = this.augend.amount + this.addend.amount;
        return new Money(amount, to);
    }
}
