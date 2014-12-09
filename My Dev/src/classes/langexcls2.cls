public with sharing class langexcls2
{
public void testmeth2()
{
final String aName = 'Young';
final List<String> aList = new List<String>{'Web','Phone Inquiry'};
String soql = new SoqlBuilder()
 .selectx(new Set<Object>{'id','name','LeadSource','email'})
  .fromx('lead')
  .wherex(new AndCondition()
    .add(new FieldCondition('Rating').equals('Hot'))
    .add(new FieldCondition('Name').likex(aName))
    .add(new SetCondition('LeadSource').includes(aList))
  )
  .toSoql(new SoqlOptions().wildcardStringsInLikeOperators());
System.debug('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'+soql);
Lead[]  d  = database.query(soql);
}
}