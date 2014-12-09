public with sharing class jsoncls3 {

    public String emailid { get; set; }

    public String lcompany { get; set; }

    public String lname { get; set; }
    
    public lead led {get; set;}
    
    public jsoncls3()
    {
      led =[select id,name,Acceptance__c from lead where Email=:emailid];
    }
    
  public PageReference acceptmeth() 
  {
    /*if(led!=null)
    {
      response objres;
      if(led.Acceptance__c!=null)
      {
        objres=(response) json.deserialize(led.Acceptance__c,responses.class);
        if(objres.resmap.containkey(emailid))
        {
          list<response> res=objres.resmap.get(emailid);
        }
    else{
    list<response> reslist=new list<response>();
    response res=new response(emailid,name,accept+'');
    relist.add(res);
    objres.resmap.put(email,relist);
    led.Acceptance__c=json.serialize(objres);
    update led;
    }
    }
       else{
       objres=new response();
       objres.remap=new map<String,List<Response>>();
       list<response> reslist=new list<response>();
    response res=new response(emailid,name,accept+'');
    relist.add(res);
    objres.resmap.put(email,relist);
    led.Acceptance__c=json.serialize(objres);
    update led;
       }
    }*/
    return null;
   }
   

     
    public class response
    {
      public string name{get; set;}
      public string accept{get; set;}
      public response(string n,string a)
      {
       name=n;
       accept=a;
      }
    }
    public class responses
    {
    public map<string,list<response>> resmap{get; set;}
    }
}