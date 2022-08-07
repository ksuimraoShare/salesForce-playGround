public with sharing class Pair {
    private String fromStr;
    private String to;

    public Pair(String fromStr, String to) {
        this.fromStr = fromStr;
        this.to = to;
    }
    
    public Boolean equals(Object aObject){
        Pair pair = (Pair)aObject;
        return this.fromStr.equals(pair.fromStr) && to.equals(pair.to);
    }
    
    public Integer hashCode(){
        return 0;
    }
}
