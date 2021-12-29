public class BotItem {

    @AuraEnabled public String name { get;set; }
    @AuraEnabled public String linkURL { get;set; }
    
    public BotItem(String name) {
        this.name = name;
    }
    
    public BotItem(String name, string linkURL) {
        this.name = name;
        this.linkURL = linkURL;

        String x = 'A';
        Integer i = 10;

        if (i < 15 ){
            i = 15;
            x = 'B';

        }else if (i < 20 ){
            x = 'C';
            
        } else {
            x = 'D';
        }
    }

}