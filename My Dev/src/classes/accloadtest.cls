public with sharing class accloadtest {

    public list<account> abc { get; set; }
    public list<account> act=[select id from account];
    
    
    
}