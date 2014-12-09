global with sharing class InfiniteScroll {
    
    static final Integer pageSize = 1;
    static final String soql = 'select id, name, Phone, type from account order by name';
    
    static ApexPages.StandardSetController getSObjectFeed() {
        system.debug('====soql===>'+soql);
        return new ApexPages.StandardSetController(Database.query(soql));     
    }
   
    public static InfiniteScrollResponse getInfiniteScrollResponseOffset(Integer offset, Integer reclimit) {
        system.debug('====soql123===>'+soql);
        InfiniteScrollResponse res= new InfiniteScrollResponse(Database.query(soql + ' limit ' + reclimit.format() + ' offset ' + offset.format()));
        system.debug('====res==='+res);
        return new InfiniteScrollResponse(Database.query(soql + ' limit ' + reclimit.format() + ' offset ' + offset.format()));
    }
        
    
}