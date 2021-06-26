public with sharing class AccountUtils {
    public static List<Account> accountsByState (String state) {
        List<Account> myAccounts = [SELECT Id, Name from Account where BillingState=:state ] ;
        return myAccounts;
    }  
}