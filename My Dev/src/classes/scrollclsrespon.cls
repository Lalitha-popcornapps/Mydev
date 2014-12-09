global class scrollclsrespon{

global boolean hasmore{get; set;}
global integer pagenumber{get; set;}
global list<SObject> record{get; set;}

global scrollclsrespon(list<SObject> record){
this.record=record;
}
}