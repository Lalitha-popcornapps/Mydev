trigger soqltest on Account (before insert) {


for(account acc:[select id,name from account]){
acc.comapny__c='testcompany';
update acc;
}
}