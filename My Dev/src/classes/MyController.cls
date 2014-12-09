global with sharing class MyController {

    public Integer globalLimit {
        get; 
        set;
    }
 public boolean disp{get; set;}
    public string inputfld {get; set;}
    
    public String valueTwo { get; set; }
    
    public MyController() {
        globalLimit = 5;
    }
          public Pagereference actnfn(){
                 string idstr=Apexpages.currentPage().getParameters().get('one');
                 string intxt=Apexpages.currentPage().getParameters().get('two');
                 string sub=idstr.substring(1);
                 id abc=sub;
                 account acc=new account(id=abc);
                 acc.comapny__c=intxt;
                 update acc;
                 system.debug('===abc==='+abc);
                system.debug('===idstr==='+idstr);
                system.debug('===intxt==='+intxt);
                system.debug('===sub==='+sub);
                
         return null;
         }
         
    public InfiniteScrollResponse getInfiniteScrollResponse() {        
        //return InfiniteScroll.getInfiniteScrollResponse(1, false);
        system.debug('----globalLimit---'+globalLimit);
        InfiniteScrollResponse inf= InfiniteScroll.getInfiniteScrollResponseOffset(0, globalLimit);
        
        system.debug('---inf---'+inf);
        
        return InfiniteScroll.getInfiniteScrollResponseOffset(0, globalLimit);
    }
    @RemoteAction  
       public static void updateAcc(string value,string idac){
        system.debug('====value==='+value);
        system.debug('====idac==='+idac);
        string su=idac.substring(1);
                 id ab=su;
        account ac=new account(id=ab);
        ac.comapny__c=value;
          update ac;
          
       }
   
    @RemoteAction
    global static InfiniteScrollResponse getMoreOffset(Integer offset, Integer reclimit) {
        system.debug('---reclimit---'+reclimit);
        InfiniteScrollResponse infs=InfiniteScroll.getInfiniteScrollResponseOffset(offset, reclimit);
        system.debug('---infs---'+infs);
        return InfiniteScroll.getInfiniteScrollResponseOffset(offset, reclimit);
    }
    
}