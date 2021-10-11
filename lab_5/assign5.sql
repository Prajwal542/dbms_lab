/* --Q1 */

create table marks_sem1 select rollno,math,sci,eng,social,sports from student order by rollno asc;

select * from marks_sem1;

alter table marks_sem1 add primary key(rollno);

describe marks_sem1;

 

/* --Q2 */

create table faculty(name varchar(20),fid char(4) primary key,subject varchar(20));

  insert into faculty values ('kakashi',4003,math);

  insert into faculty values ('guy',5002,'sports');

   insert into faculty values ('kurenai',5038,'eng');

  

/* --Q3 */

create table sem1(subj_id char(4) primary key,subject varchar(20),fid char(4),cap integer,campus integer);

alter table sem1 modify column fid int not null auto_increment,

    -> add key(fid);

alter table sem1 modify column fid int not null auto_increment,

   -> add key(campus);

insert into sem1 values('101','math',4003,60,101);

insert into sem1 values('102','sports',5002,70,101);

insert into sem1 values('105','eng',5038,60,104);

 

/* --Q4 */

alter table campus add primary key(cid);

describe campus;

 

/* --Q5 */

alter table student

    -> drop column math,

    -> drop column sci,

    -> drop column eng,

    -> drop column social,

    -> drop column sports;

  alter table student alter column dob set default '2001-01-01',alter column yjoin set default '2019',alter column gender set default 'M',alter column team set default 'R';

  alter table student add foreign key(rollno) references marks_sem1(rollno);

  alter table student add foreign key(cid) references campus(cid);

  update student set cid=(case when name in ('dwayne','gamora','natasha')then 109 when name in ('john','tom')then 101 when name in ('dave','jean')then 110 when name in ('randy','kane')then 104 when name ='carol' then 113 else 107 end);

  select * from student;

  describe student;