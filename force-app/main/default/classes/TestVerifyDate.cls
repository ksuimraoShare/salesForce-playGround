@isTest
private with sharing class TestVerifyDate {
    @isTest static void testCheckDatesWithin30Days() {
        Date date1 = Date.newInstance(2021, 7, 1);
        Date date2 = Date.newInstance(2021, 7, 20);

        Date resultDate = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(resultDate, date2);
    }

    @isTest static void testCheckDatesWithout30Days() {
        Date date1 = Date.newInstance(2021, 7, 1);
        Date date2 = Date.newInstance(2021, 8, 10);
        Date lastDate = Date.newInstance(2021, 7, 31);

        Date resultDate = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(resultDate, lastDate);
    }

    //30日ちょうど（でかいとみなされて、最終日が返ってくる）
    @isTest static void testCheckDatesJust30Days() {
        Date date1 = Date.newInstance(2021, 7, 1);
        Date date2 = Date.newInstance(2021, 7, 31);
        Date lastDate = Date.newInstance(2021, 7, 31);

        Date resultDate = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(resultDate, lastDate);
    }
}
