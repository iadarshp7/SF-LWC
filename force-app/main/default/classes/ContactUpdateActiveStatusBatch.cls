public class ContactUpdateActiveStatusBatch implements Database.Batchable<SObject>, Database.stateful, Schedulable{
    public Database.QueryLocator start(Database.BatchableContext batchCtx){
        return Database.getQueryLocator([SELECT Id, Is_Active__c FROM Contact]);
    }
    public void execute(Database.BatchableContext batchCtx, List<Contact> conList){
        List<Contact> conToUpdate = new List<Contact>();
        for(Contact c:conList){
            c.Is_Active__c = true;
            conToUpdate.add(c);
        }
        update conToUpdate;
    }
    public void finish(Database.BatchableContext batchCtx){
        System.debug('Batch Run Successfully!');
    }
    public void execute(SchedulableContext ctx){
        Database.executeBatch(new ContactUpdateActiveStatusBatch());
    }
}