--Question 1 

select student.name,student.rollno,student.dob,student.yjoin,student.gender,student.team,student.cid,marks_sem1.rollno,marks_sem1.math,marks_sem1.sci,marks_sem1.eng,marks_sem1.social,marks_sem1.sports from student inner join marks_sem1 on student.rollno=marks_sem1.rollno;

--Question 2

select student.name,marks_sem1.sports from student inner join marks_sem1 on student.rollno=marks_sem1.rollno;

--Question 3

select student.name,marks_sem1.math,marks_sem1.rollno from student inner join marks_sem1 on student.rollno=marks_sem1.rollno where cid=101 or cid=107  or cid=109 or cid=110;

--Question 4

select * from Student left join Campus on Student.cid = Campus.cid;
select * from Student right join Campus on Student.cid = Campus.cid;