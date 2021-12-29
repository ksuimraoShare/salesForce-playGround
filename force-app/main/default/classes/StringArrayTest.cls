public with sharing class StringArrayTest {

    public static List<String> generateStringArray(Integer aMaxIndex){

        List<String> returnList = new List<String>();

        for(Integer i = 0; i < aMaxIndex; i++){
            String addStr = '';

            addStr = 'Test ' + String.valueOf(i);
            returnList.add(addStr);
        }
        
        return returnList;
    }
}