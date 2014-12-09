public class standaredpicklist
{   
    public String status {get;set;}
     list<string> sts{get;set;}
    public standaredpicklist()
    {
       
    }
 
 
    public List<string> getownershipOptions()   
    {   sts= new list<string>();
       // List<SelectOption> options =  new List<SelectOption>();   
        //options.add(new selectOption('None','--- None ---'));   
        Schema.DescribeFieldResult fieldResult = Case.status.getDescribe();   
        List<Schema.picklistEntry> ple = fieldResult.getPicklistValues();   
        
        for(Schema.picklistEntry f:ple)   
        {   
            //options.add(new selectOption(f.getLabel(),f.getValue()));      
            sts.add(f.getValue());             
        }   
        return sts;   
    }     
}