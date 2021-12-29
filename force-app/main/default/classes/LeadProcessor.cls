public class LeadProcessor implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator(
            'SELECT ID FROM Lead '
        );
    }

    public void execute(Database.BatchableContext bc, List<Lead> scope){
        
    }
}
