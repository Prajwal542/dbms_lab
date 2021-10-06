


-- 1 
select name from Student where gender = 'F' union select name from Student where team = 'R';


-- 2 
select team, count(*) from Student group by team ; 

-- 3 
select team, avg(math) from Student where  gender= 'M' group by team ;        


select * from Student group by gender, team  order by team ASC; 


-- 4
select team, avg(sci) from Student group by team order by avg(sci) DESC limit 2;

