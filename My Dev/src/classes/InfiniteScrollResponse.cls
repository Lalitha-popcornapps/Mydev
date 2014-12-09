global class InfiniteScrollResponse {
	
    global List<Account> records { get; set; }
    
    global InfiniteScrollResponse(List<Account> records) {
    	this.records = records;
    	system.debug('records in=====>'+records);
    }
}