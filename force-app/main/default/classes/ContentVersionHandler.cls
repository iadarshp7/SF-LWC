public with sharing class ContentVersionHandler {
    public static void handleAfterInsert(List<ContentVersion> ContentVersionList){
        if(!ContentVersionList.isEmpty()){
          ContentVersionHelper.createContentDistribution(ContentVersionList);
        }
    }
}


