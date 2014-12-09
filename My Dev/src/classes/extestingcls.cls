public with sharing class extestingcls {

    public String conrecs { get; set; }

    public list<account> accons { get; set; }

    public list<account> recname { get; set; }

    
    public PageReference delact() {
    list<id> lstid=new list<id>();
    list<account> aclst=new list<account>();
    for(wrpobj1 w:recdis )
    {
    if(w.checkbx==true)
    {
    lstid.add(w.acc.id);
    }
    }
    aclst=[select id,name from account where id=:lstid];
    recname=[select id,name from account where id=:lstid];
    delete aclst;
    pagereference ref=new pagereference('/apex/extesting');
    ref.setredirect(true);
    
        return ref;
    }


    public PageReference selact() {
    list<id> lstid1=new list<id>();
    accons =new list<account>();
    for(wrpobj1 w:recdis )
    {
    if(w.checkbx==true)
    {
    lstid1.add(w.acc.id);
    }
    }
    accons =[select id,name from account where id=:lstid1];
    pagereference ref1=new pagereference('/apex/extesting');
    ref1.setredirect(true);
    return ref1;
   
    }


    public list<wrpobj1> recdis { get; set; }
    
   public class wrpobj1
   {
   public boolean checkbx{get; set;}
   public account acc{get; set;}
   public wrpobj1(boolean b,account t)
   {
   checkbx=b;
   acc=t;
   }
   }
   public extestingcls ()
   {
  
   recdis =new list<wrpobj1>();
   list<account> lst=[select id,name from account where name like 'e%' limit 20];
   for(account a:lst)
   {
   recdis.add(new wrpobj1(false,a));
   }
   }    
}