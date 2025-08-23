public class UpdateParentAccount implements Queueable{
    private Id parentAccId;
    private List<Account> accList;
    public UpdateParentAccount(List<Account> accRecords, Id id){
        this.parentAccId=id;
        this.accList=accRecords;
    }
    public void execute(QueueableContext context){

        for(Account a:accList){
            a.ParentId=parentAccId;
        }
        update accList;
    }
}

