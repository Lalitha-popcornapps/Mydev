public with sharing class testcontrolller {
public  list<account> acc{get; set;}
public testcontrolller(){
 acc =[select id,name from account];
}


}