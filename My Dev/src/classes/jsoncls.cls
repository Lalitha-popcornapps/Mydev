public with sharing class jsoncls 
{

    public PageReference acceptmeth() 
    {
        lead l=new lead();
        system.debug('*******************'+l.id);
        if(l.Acceptance__c==null) 
        {
           l.LastName='Lalli';
           l.Company='Infosys';
           l.Acceptance__c=json.serialize(acp);
           insert l;
           system.debug('*******************'+l.id);
        }
        else if(l.LastName=='DummyLead')
        {
           l.Acceptance__c=json.serialize(acp);
           update l;
        }
        PageReference ref=new PageReference('/apex/jsonexpage');
        ref.setRedirect(true);
        return ref;
     }
     public list<acceptwrp> acp{get; set;}
    
     public class acceptwrp
     {
        public string Name{get; set;}
        public string Accept{get; set;}
        public acceptwrp(string a1,string r1)
        {
          Name=a1;
         Accept=r1;
        }
     }
     public jsoncls()
     {
       acp=new list<acceptwrp>();
    
       acp.add(new acceptwrp('Ramya','Yes'));
     }

}