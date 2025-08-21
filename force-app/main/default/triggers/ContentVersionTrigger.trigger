trigger ContentVersionTrigger on ContentVersion (after insert) {
   Trigger_Configuration__mdt triggerConfig = Trigger_Configuration__mdt.getInstance('Content_Version');
   if(triggerConfig.Active__c){
    //   if(Trigger.isBefore){
    //     if(Trigger.isInsert){
            
    //     }
    //     if(Trigger.isUpdate){
    //     }
    //   }
      if(Trigger.isAfter){
        // if(Trigger.isUpdate){
          
        // }
        if(Trigger.isInsert){
           ContentVersionHandler.handleAfterInsert(trigger.new);
        }
      }
   }
}