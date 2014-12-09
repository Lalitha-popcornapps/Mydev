trigger teammember on Opportunity (before insert,before update,before delete,after insert,after update,after delete,after undelete) 
{
  if(Trigger.isAfter&&Trigger.isInsert)
  {
     Set<Id> OppIds  = new Set<Id>();
     for(Opportunity o:trigger.new)
     {
       OppIds.add(o.id);
     }
    TeamMembercls tc=new TeamMembercls();
    tc.createTeam(OppIds);
  
  }
  
  if(Trigger.isAfter&&Trigger.isUpdate)
  {
    if(trigger.new[0].ownerId!=trigger.old[0].ownerId)
    {
      Set<Id> OppIds  = new Set<Id>();
     for(Opportunity o:trigger.new)
     {
       OppIds.add(o.id);
     }
     TeamMembercls tc=new TeamMembercls();
     tc.createTeam(OppIds);
     system.debug('====yes time to call function==='+trigger.new[0].ownerId);
   
    }
    else
    {
     system.debug('====dont call==='+trigger.old[0].ownerId);
    }
  }
}