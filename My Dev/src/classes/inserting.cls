public with sharing class inserting {

    public String take2c { get; set; }
 
    public String take1 { get; set; }

    public PageReference savinrec() {
     account a=new account();
     a.name=take1;
     insert a;
     contact c=new contact();
     c.lastname=take2c;
     insert c;
     pageReference ref=new pageReference('/apex/inserting');
     ref.setredirect(true);
     return ref;
    }

}