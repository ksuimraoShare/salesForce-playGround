public with sharing class pagination {
    public List<Account> accResults {get; private set;}

    public pagination() {
        List<Account> accList = [SELECT Name FROM Account];

        Apexpages.StandardSetController ssc = new Apexpages.StandardSetController(accList);
        ssc.setPageSize(5);

        this.accResults = ssc.getRecords();
    }
}
