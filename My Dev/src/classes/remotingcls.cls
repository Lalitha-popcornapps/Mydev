global with sharing class remotingcls {

    public String accountName { get; set; }
    public static Account account { get; set; }
    public remotingcls() { } // empty constructor
    
    @RemoteAction
    global static Account getAccount(String accountName) {
        account = [SELECT Id, Name, Phone, Type, NumberOfEmployees ,Active__c
                   FROM Account WHERE Name = :accountName];
        return account;
    }
}