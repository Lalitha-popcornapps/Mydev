public with sharing class langexcls
{
public void testmeth()
{
list<string> lst=new list<string>();

final String aName = 'O\'Young';
final List<String> aList = new List<String>{'Web','Phone Inquiry'};
String soql = 'SELECT id,name,LeadSource,email';
soql += ' FROM Lead';
soql += ' WHERE Rating :=';
soql += 'Hot';
soql += ' AND Name like \'%';
soql += String.escapeSingleQuotes(aName);
soql += '%\' AND LeadSource INCLUDES (';
Boolean isFirst = true;
for(String anItem : aList){
 if(isFirst){
 isFirst = false;
 } else {
 soql += ',';
 }
 soql += '\'';
 soql += anItem;
 soql += '\'';
}
soql += ')';
System.debug('*************************************'+soql);
Lead[]  d  = database.query(soql);
System.debug('+++++++++++++++++++++++++++++++++++++'+soql);
}
}