global with sharing class scrollcls1 {

public integer globallimit{get; set;}
public scrollcls1(){
globallimit=5;
}
public scrollclsrespon getscollres(){
return scrollclsinfinite.getscollresoffset(0,globalLimit);
}
@RemoteAction
global static scrollclsrespon getMore(integer currenPN){
return scrollclsinfinite.getscollres(currenPN,true);
}
@RemoteAction
global static scrollclsrespon getscollresoffset(Integer offset, Integer reclimit){
return scrollclsinfinite.getscollresoffset(offset, reclimit);
}
}