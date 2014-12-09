public class multiselect {
        String[] countries = new String[]{};
        public string front{get; set;}
        
          public multiselect(){
          
          }
        public PageReference test() {
        front='controller value';
            return null;
        }
            
        public List<SelectOption> getItems() {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('US','US'));
            options.add(new SelectOption('CANADA','Canada'));
            options.add(new SelectOption('MEXICO','Mexico'));
            return options;
        }
            
        public String[] getCountries() {
            return countries;
        }
            
        public void setCountries(String[] countries) {
            this.countries = countries;
        }
    }