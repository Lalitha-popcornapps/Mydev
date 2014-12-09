public with sharing class account1 {

    public account1(ApexPages.StandardController controller) {

    }


    public PageReference last() {
        return null;
    }


    public PageReference Next() {
        return null;
    }


    public PageReference First() {
        return null;
    }


    public PageReference Previous() {
        return null;
    }


    public list<account> accrec { get; set; }
    
    public account1()
    {
      accrec = new list<account>();
      accrec=[select id,name from account order by name limit 5];
    }
    
}