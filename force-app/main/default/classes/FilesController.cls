public with sharing class FilesController {
    @AuraEnabled(cacheable=false)
    public static List<String> getProductImages() {
        List<String> prodUrl = new List<String>();
        Set<Id> fileIds = new Set<Id>();
        List<ContentDocument> files =[select Id from ContentDocument];
        for(ContentDocument file:files){
           fileIds.add(file.Id); 
        }
        List<ContentDistribution> ContentDistributionList = [select ContentDownloadUrl from ContentDistribution where ContentDocumentId IN:fileIds];
        for(ContentDistribution cd:ContentDistributionList){
            String url = cd.ContentDownloadUrl;
            prodUrl.add(url);
        }
        return prodUrl;
    }
}