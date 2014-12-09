public class testparam
{
public string selectedarticletype{get; set; }
  public list<FAQ__kav> faqref;
  public list<How_To__kav> howtoref;
  public list<Policy__kav> policyref;
  public list<Troubleshooting__kav> tsref;  


public PageReference artcletypequery() {

     if(selectedarticletype == 'FAQ__kav')
     {
      faqref = [Select title FROM FAQ__kav WHERE PublishStatus = 'online' and language = 'en_US'];
      //return faqref;
     }
     else if(selectedarticletype == 'How_To__kav')
     {
      howtoref = [select title FROM How_To__kav WHERE PublishStatus = 'online' and language = 'en_US'];
      //return howtoref;
     }
     else if(selectedarticletype == 'Policy__kav')
     {
      policyref = [select title FROM Policy__kav WHERE PublishStatus = 'online' and language = 'en_US'];
      //return policyref;
     }
     else if(selectedarticletype == 'Troubleshooting__kav')
     {
      tsref = [select title FROM Troubleshooting__kav WHERE PublishStatus = 'online' and language = 'en_US'];
      //return tsref;
     }
 
    system.debug('====testing==inner==>'+selectedarticletype);
    return null;
  }
}