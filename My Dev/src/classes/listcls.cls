public with sharing class listcls {

    public list<account> lstwer { get; set; }
    
    public listcls()
    {
    lstwer=[select id,name from account];
}
}