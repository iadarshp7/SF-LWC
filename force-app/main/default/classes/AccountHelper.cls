public with sharing class AccountHelper {
    @future
    public static void updateContactCount(List<Id> accList){
        List<Account> updateAccount = new List<Account>();
        List<Account> acc = [select id, name, Total_Contacts__c,(select id, firstname from contacts) from Account where id in:accList];
        if(!acc.isEmpty()){
            for(Account a:acc){
            a.Total_Contacts__c=a.Contacts.size();
            updateAccount.add(a);
            }
        }
        if(!updateAccount.isEmpty()){
            update updateAccount;
        }
    }
}