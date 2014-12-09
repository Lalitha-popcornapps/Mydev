public with sharing class numfrec {

    public list<account> recset { get; set; }
    public numfrec(){
    recset=[select id,name from account];
    }
       
}