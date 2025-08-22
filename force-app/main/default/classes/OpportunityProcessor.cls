public class OpportunityProcessor implements Database.Batchable<sObject>, Database.stateful{
    public static Integer recordCount = 0;
    public Database.QueryLocator start(Database.BatchableContext batchContext){
       return Database.getQueryLocator([SELECT Id, Name, LeadSource  FROM Opportunity]);
    }
    public void execute(Database.BatchableContext batchContext, List<Opportunity> OppList){
        List<Opportunity> Opp = new List<Opportunity>();
        for(Opportunity op:OppList){
            op.LeadSource='Web';
            Opp.add(op);
        }
        update Opp;
        recordCount+=OppList.size();
    }
    public void finish(Database.BatchableContext batchContext){
        System.debug('Batch class executed with '+recordCount+' records');
    }
}