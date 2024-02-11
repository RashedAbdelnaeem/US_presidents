select * from dbo.PresidentsOfUS ;

-- count of prsidents from each party 
create view  count_of_prsidents  as 
select party ,count (party) as count_of_prsidents
from dbo.PresidentsOfUS 
group by party 
;
select * from count_of_prsidents  ;
-- correct wrong named of whig party 

select * from dbo.PresidentsOfUS
where 
S#No# = 10 
and
president like '%john tyler%'
;
update  PresidentsOfUS
set party = 'Whig'
where 
S#No# = 10 
and
president like '%john tyler%'
;
-----------------
-- display us presidents occure to salary 
create view presidents_of_us_salaries as
select S#No# , president , salary , party 
from 
dbo.PresidentsOfUS 
;

select * from presidents_of_us_salaries ;
------------------
-- whose president work as a vice before  
create view  whose_president_work_as_a_vice  as 
select  us_1.S#No# ,us_1.president
, us_2.vice ,us_2.prior ,us_2.party
from dbo.PresidentsOfUS    us_1
inner join dbo.PresidentsOfUS  us_2
on us_1.president =us_2.vice
;
select * from whose_president_work_as_a_vice ;