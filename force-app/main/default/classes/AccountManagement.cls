@RestResource(urlMapping='/accManagement/')
global class AccountManagement {
    @HttpGet
    global static List<Account> getAccount(){
        Map<String, String> paramsMap = RestContext.request.params;
        String accIndustry = paramsMap.get('Industry');
        return [select id, Name,Industry from Account where Industry =:accIndustry order by Name desc limit 5];
    }
}