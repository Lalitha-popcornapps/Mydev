public with sharing class jsoncls2 
{

    public String email { get; set; }

    public String lcompany { get; set; }

    public String lname { get; set; }
   
    public lead led{get; set;}
 
    public jsoncls2()
    {
      led = [select ID,Acceptance__c FROM LEAD WHERE ID='00Q9000000NEbqP'];
      obj=new responses();
      obj.resmap.add(new response('lalitha'));
      
    }
    responses data;
    public PageReference acceptmeth() 
    {
   
       IF(led.Acceptance__c==NULL)
       {
         led.Acceptance__c=JSON.serialize(obj);
         update led;

      }
      ELSE
      {
          responses RESS = NEW responses();
         RESs  = (responses) JSON.DEserialize(led.Acceptance__c,responses.CLASS);
         // RESs.resmap.add(new Response('something'));
          //led.Acceptance__c=JSON.serialize(RESs);
        //  update led;
      }
         PageReference ref=new PageReference('/apex/jsonexpage2');
        ref.setRedirect(true);
        return ref;
    }
    
    public responses obj{get; set;}
    
    
    public class response
    {
      public string email{get; set;}

      public response(string n)
      {
       email=n;
      }
    }
    public class responses
    {
    public responses(){
    resmap = new list<response>();
    }
    public list<response> resmap{get; set;}
    }

}