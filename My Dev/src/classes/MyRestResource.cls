@RestResource(urlMapping='/Account/*')
global with sharing class MyRestResource {

@HttpPost
    global static String doPost(String name,String phone, String website,integer total) {
        Account account = new Account();
        account.Name = name;
        account.phone = phone;
        account.website = website;
        account.total__c=total;
        insert account;
        return account.Id;
    }
}