trigger OrderEventTrigger on Order_Event__e (after insert) {

    List<Task> insertTasks = new List<Task>();

    for (Order_Event__e orderEvent : Trigger.New) {

        if(orderEvent.Has_Shipped__c == true){
            Task addTask = new Task(Priority = 'Medium',
                                    Subject = 'Follow up on shipped order ' + orderEvent.Order_Number__c,
                                    OwnerId = orderEvent.CreatedById);
            insertTasks.add(addTask);
        }
    }
    if(insertTasks.size() > 0){
        insert insertTasks;
    }
}