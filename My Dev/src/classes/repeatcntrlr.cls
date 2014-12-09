public with sharing class repeatcntrlr {

    public list<account> records { get; set; }

public repeatcntrlr()
{
records =[select id,name from account limit 10];
}
}