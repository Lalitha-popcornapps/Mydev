public class TeamMembercls
{
  public void createTeam(Set<Id> oppIds)
  {
     system.debug('oppids===>'+oppIds);
     List<OpportunityTeamMember> lstOppTeams = new List<OpportunityTeamMember>();
     for (Opportunity opp : [select Id, OwnerId from Opportunity where Id in :oppIds])
      {
                OpportunityTeamMember otm = new OpportunityTeamMember(
                           TeamMemberRole = 'Sales Manager',
                           OpportunityId = opp.Id,
                           UserId        = opp.OwnerId);
                           
                lstOppTeams.add(otm);
                 
      }
     insert lstOppTeams;
  }
}