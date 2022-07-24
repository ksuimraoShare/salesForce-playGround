public with sharing class Sum implements Expression{
    @TestVisible private Money augend;
    @TestVisible private Money addend;
    
    public Sum(Money augend, Money addend){
    }
}
