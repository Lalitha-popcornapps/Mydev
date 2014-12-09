public with sharing class testcls {

    public list<wrpcls> wrp { get; set; }
    
    public class wrpcls
    {
      public account act{get; set;}
      public boolean chck{get; set;}
       public wrpcls(account at,boolean ck){
        act=at;
        chck=ck;
       }
    }
    
    public testcls()
    {
     wrp=new list<wrpcls>();
     list<account> ac=new list<account>();
      ac=[select id,name from account];
      for(account a:ac){
       wrp.add(new wrpcls(a,false));
      }
    }
}