public with sharing class pagination {
    private Apexpages.StandardSetController ssc ;
    public List<Account> accResults {get; private set;}

    public pagination() {
        List<Account> accList = [SELECT Name FROM Account ORDER BY CreatedDate DESC];

        this.ssc = new Apexpages.StandardSetController(accList);
        this.ssc.setPageSize(5);

        this.accResults = ssc.getRecords();
    }
    
    public List<Integer> getPageNumList(){
        List<Integer> resultList = new List<Integer>();
        Integer endPageNum = this.ssc.getPageSize();

        for(Integer i=1; i<=endPageNum; i++){
            resultList.add(i);
        }
        return resultList;
    }
    
    public void goClickNumPage(){
        String strClickNum = Apexpages.currentPage().getParameters().get('clickNum');
        Integer clickNum = Integer.valueOf(strClickNum);

        this.ssc.setPageNumber(clickNum);
        this.accResults = this.ssc.getRecords();
    }
    
    public void goPrevious(){
        this.ssc.previous();
        this.accResults = ssc.getRecords();
    }
    public void goNext(){
        this.ssc.Next();
        this.accResults = ssc.getRecords();
    }
}
