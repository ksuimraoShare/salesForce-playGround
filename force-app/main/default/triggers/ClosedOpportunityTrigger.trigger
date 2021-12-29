trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

    private static final String TARGET_OPPORTUNITY_STAGE ='Closed Won';
    private static final String INSERT_TASK_SUBJECT ='Follow Up Test Task';
    List<Task> insertTaskList = new List<Task>(); 

    for(Opportunity tmpOpportunity : [SELECT Id FROM Opportunity WHERE Id IN :Trigger.New
                                        AND StageName = :TARGET_OPPORTUNITY_STAGE]){
        
        insertTaskList.add( new Task(WhatId = tmpOpportunity.id
                                    ,Subject = INSERT_TASK_SUBJECT));
    }
    
    if(insertTaskList.size() > 0){
        insert insertTaskList;
    }
}