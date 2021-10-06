


-- 1 
select name from students where gender = 'F' union select name from students where team = 'R';


-- 2 
select team, count(*) from students group by team ; 

-- 3 
select team, avg(math) from students where  gender= 'M' group by team ;        


select * from students group by gender, team  order by team ASC; 


-- 4
select team, avg(sci) from students group by team order by avg(sci) DESC limit 2;

