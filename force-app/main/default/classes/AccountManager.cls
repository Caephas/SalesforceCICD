public with sharing class AccountManager {
    
    @AuraEnabled
    public static List<Account> getAccount(Integer numberOfRecords){
        System.debug('this worked');
        return [SELECT Id, Name, Phone FROM Account Limit :numberOfRecords];
        
    }
}