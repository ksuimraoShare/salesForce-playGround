public abstract with sharing class Money {
    @TestVisible protected Integer amount;
    public Money() {

    }
    public Boolean equals(Money money){
        return this.amount == money.amount;
    }
}
