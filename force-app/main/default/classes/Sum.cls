public with sharing class Sum implements Expression{
    @TestVisible public Expression augend {get; private set;}
    @TestVisible public Expression addend {get; private set;}
    
    public Sum(Expression augend, Expression addend){
        this.augend = augend;
        this.addend = addend;
    }
    
    public Money reduce(Bank bank, String to){
        Integer amount = this.augend.reduce(bank, to).amount + this.addend.reduce(bank, to).amount;
        return new Money(amount, to);
    }
}
