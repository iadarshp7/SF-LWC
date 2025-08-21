public class ContentVersionHelper {
    public static void createContentDistribution(List<ContentVersion> contentVersionList) {

        List<ContentDistribution> publicLinkDoc = new List<ContentDistribution>();
       
        for(ContentVersion cv:contentVersionList){
        ContentDistribution cd = new ContentDistribution();
        if(cv.isLatest==true && cv.Title.contains('B2B')){
        cd.Name = cv.Title;
        cd.ContentVersionId = cv.Id;
        cd.PreferencesAllowViewInBrowser= true;
        cd.PreferencesLinkLatestVersion=true;
        cd.PreferencesNotifyOnVisit=false;
        cd.PreferencesPasswordRequired=false;
        cd.PreferencesAllowOriginalDownload= true;
        publicLinkDoc.add(cd);
         }
        }
    
        if(!publicLinkDoc.isEmpty()){
           insert publicLinkDoc;
        }
    }
}