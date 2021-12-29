@isTest
private class DailyLeadProcessorTest {
    public static String CRON_EXP = '0 0 0 15 3 ? 2022';

    static testmethod void testScheduledJob() {
        List<Lead> insertList = new List<Lead>();

        for(Integer i=0; i<200; i++){
            Lead lead = new lead(Company = 'test', LastName = 'test');
            insertList.add(lead);
        }
        insert insertList;

        List<Lead> afterInsertList = [SELECT LeadSource FROM Lead WHERE LeadSource = null];
        Map<Id, Lead> LeadMap = new Map<Id, Lead>(afterInsertList);
        List<Id> LeadIds = new List<Id>(LeadMap.keySet());

        Test.startTest();
        String jobId = System.schedule('ScheduledApexTest',
            CRON_EXP,
            new DailyLeadProcessor());

            List<Task> lt = [SELECT Id
                            FROM Task
                            WHERE WhatId IN :LeadIds];
            System.assertEquals(0, lt.size(), 'Tasks exist before job has run');
        Test.stopTest();

        List<Lead> afterTestList =  [SELECT LeadSource FROM Lead WHERE Id IN :LeadIds AND LeadSource = 'Dreamforce'];
        System.assertEquals(200, afterTestList.size(), 'メソッド失敗');
    }
}