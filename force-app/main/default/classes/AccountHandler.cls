public with sharing class AccountHandler {
     public static void handleAfterInsertEvent(List<Account> accList){
        List<Id> accIds = new List<Id>();
        for(Account a:accList){
            accIds.add(a.Id);
        }
        AccountHelper.updateContactCount(accIds);
     }
     public static void handleAfterUpdateEvent(List<Account> accList){
        List<Id> accIds = new List<Id>();
        for(Account a:accList){
            accIds.add(a.Id);
        }
        AccountHelper.updateContactCount(accIds);
     }
}