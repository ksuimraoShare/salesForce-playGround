public with sharing class Dollar {
    public Integer amount {get; private set;}

    public Dollar(Integer amount) {
        this.amount = amount;
    }

    public Dollar times(Integer multiplier){
        return new Dollar(this.amount * multiplier);
    }

    public Boolean equals(Dollar Dollar){
        return this.amount == Dollar.amount;
    }
}
