public with sharing class accpagination {

    public accpagination(ApexPages.StandardSetController controller) {
      controller.setPageSize(5);
    }

}