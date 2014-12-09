global  with sharing class scrollclsinfinite
{

static final integer pagesize=1;
static final string query='select id,name from account';

  static ApexPages.standardSetController getSObjectFed(){
     return new ApexPages.standardSetController(Database.Query(query));
   }
 
 public static scrollclsrespon getscollres(integer currenPN,boolean wantmore)
 {
 ApexPages.standardSetController fd=getSObjectFed();
 fd.setpageSize(pagesize);
 fd.setPageNumber(currenPN);
   if(!wantmore)
   {
    scrollclsrespon r=new scrollclsrespon((list<SObject>)fd.getRecords());
    r.hasmore=fd.getHasNext();
    r.pagenumber=fd.getPageNumber();
    return r;
   }
   else{
   if(fd.getHasNext()){
   fd.Next();
   scrollclsrespon r=new scrollclsrespon((list<SObject>)fd.getRecords());
    r.hasmore=fd.getHasNext();
    r.pagenumber=fd.getPageNumber();
    return r;
   }
   else{
   scrollclsrespon r=new scrollclsrespon(null);
   r.hasmore=false;
   r.pagenumber=fd.getPageNumber();
   return r;
   }
  }
 }
 public static scrollclsrespon getscollresoffset(integer offset,integer reclimit){
  return new scrollclsrespon(Database.Query(query+ ' limit ' + reclimit.format() + ' offset ' + offset.format()));
 }
}