trigger AccountTrigger on Account (after insert, after update) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){AccountHandler.handleAfterInsertEvent(Trigger.new);}
        // if(Trigger.isUpdate){AccountHandler.handleAfterUpdateEvent(Trigger.new);}
    }
}