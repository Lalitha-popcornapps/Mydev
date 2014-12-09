trigger count on Contact (after insert,after update,after delete,after undelete) {

if(Trigger.isafter&&Trigger.isInsert)
{
Contact c=trigger.new[0];
  contact ct=[select account.id from contact where id=:c.id];
  list<contact> conlst=[select id from contact where account.id=:ct.account.id];
  account ac=new account(id=ct.account.id);
  ac.total__c=conlst.size();
  update ac;
}
else if(Trigger.isDelete)
{
Contact c1=Trigger.old[0];
  //contact ct1=[select account.id from contact where id=:c1.id];
  list<contact> conlst1=[select id from contact where account.id=:c1.AccountId];
  account ac1=new account(id=c1.AccountId);
  ac1.total__c=conlst1.size();
  update ac1;
  system.debug('=============>'+c1.AccountId);
}

}