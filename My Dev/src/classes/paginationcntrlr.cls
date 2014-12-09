public with sharing class paginationcntrlr {

    public list<account> acrec { get; set; }
    public paginationcntrlr(){
    acrec=[select id,name from account];
    }

}