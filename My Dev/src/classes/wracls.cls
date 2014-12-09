public with sharing class wracls {

    public PageReference selrec() {
        return null;
    }


    public PageReference delrec() {
        return null;
    }


    public list<account> listwrap1 { get; set; }
    
    public wracls()
    {
    listwrap1=[select id,name from account];
    }
}