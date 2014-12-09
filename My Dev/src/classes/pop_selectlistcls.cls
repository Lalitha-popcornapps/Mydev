public with sharing class pop_selectlistcls {

    public String company { get; set; }

    public String name { get; set; }

    public String selected22 { get; set; }

    public String selected11 { get; set; }

    public String selected { get; set; }
    
    public void pop_selectlistcls()
    {
     lead l=new lead();
     l.pick1__c=selected;
     l.pick2__c=selected11;
     l.pick3__c=selected22;
     l.lastname=name;
     l.Company=company;
     
    }
}