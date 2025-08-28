@RestResource(urlMapping='/accManagement/')
global class AccountManagement {
    @HttpGet
    global static List<Account> getAccount(){
        return [select id, Name from Account order by Name desc limit 5];
    }
}