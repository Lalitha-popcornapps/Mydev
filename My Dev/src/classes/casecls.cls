global class casecls
{
webservice static id createcase(string recid)
{
case c;
if(recid.startswith('001'))
{
c=new case();
group p=[select id from group where name='level1'];
c.origin='Email';
c.status='Medium';
c.accountid=recid;
c.ownerid=p.id;
insert c;
}
else if(recid.startswith('500'))
{
c=new case();
group p=[select id from group where name='level2'];
case parentcase=[select id,accountid from case where id=:recid];
c.origin='Phone';
c.status='Medium';
c.accountid=parentcase.accountid;
c.parentid=parentcase.id;
c.ownerid=p.id;
insert c;
}
return recid;
}
webservice static id createcase3(string recid)
{
case c=new case();
group p=[select id from group where name='level3'];
case parentcase=[select id,accountid from case where id=:recid];
c.origin='phone';
c.status='Medium';
c.accountid=parentcase.accountid;
c.parentid=parentcase.id;
c.ownerid=p.id;
insert c;
return recid;
}
}