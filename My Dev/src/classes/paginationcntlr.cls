public with sharing class paginationcntlr {

    public paginationcntlr(ApexPages.StandardSetController controller) {

    }


    public PageReference previous() {
        return null;
    }


    public PageReference next() {
        return null;
    }


    public list<account> acrec { get; set; }
    
    public paginationcntlr(){
    acrec=[select id,name from account];
    }
}