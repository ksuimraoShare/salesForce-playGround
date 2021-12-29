global class DailyLeadProcessor implements Schedulable {
    
    global void execute(SchedulableContext ctx) {
        List<Lead> updateList = [SELECT LeadSource FROM Lead WHERE LeadSource = null LIMIT 200];
        for(Lead tmpLead : updateList){
            tmpLead.LeadSource = 'Dreamforce';
        }
        update updateList;
    }
}