public class NewCaseListController {

    public List<Case> getNewCases(){
        List<Case> caseList = [
            SELECT CaseNumber
            FROM Case
            WHERE Status = 'New'
        ];

        return caseList;
    }
}