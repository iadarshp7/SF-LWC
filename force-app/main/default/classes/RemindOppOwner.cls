global class RemindOppOwner implements Schedulable{
    global void execute(SchedulableContext context){
        List<Opportunity> opp = [SELECT Id, Name FROM Opportunity WHERE isClosed=FALSE];
        TaskUtility.remindOppOwners(opp);
    }
}