 /*Question 1*/ 
 SELECT name,rollno,DATE_FORMAT(FROM_DAYS(DATEDIFF(CURDATE(),dob)), '%Y')+0 AS age FROM student WHERE (DATE_FORMAT(FROM_DAYS(DATEDIFF(CURDATE(),dob)), '%Y')+0)>=18 ORDER BY dob ASC;
  
  /*Question 2*/ 
 SELECT male_count.male, female_count.female FROM(SELECT count(gender)male FROM Student WHERE gender = 'M' and DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), dob)), '%Y')+0 >= 20)male_count, (SELECT count(gender)female FROM Student WHERE gender = 'F' AND DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), dob)), '%Y')+0 >= 20)female_count;

 
  /*Question 3*/ 
SELECT count(name) AS more_than_math FROM student WHERE math>(SELECT sum(math+sci+eng+social+sports)/5);

/*Question 4*/ 
SELECT directs.south, directw.west FROM (SELECT count(pincode)south FROM Campus WHERE pincode LIKE '5%' or pincode LIKE '6%')directs, (SELECT count(pincode)west FROM Campus WHERE pincode LIKE '3%' or pincode LIKE '4%')directw;

  /*Question 5*/ 
 SELECT name AS 2nd_student FROM student ORDER BY (math+sci+eng+social+sports)/5 DESC LIMIT 1,1;

 /*Question 6*/ 
SELECT name,rollno AS rno, (math+sci+eng+social+sports)/5 AS avg_marks,
case WHEN (math+sci+eng+social+sports)/5 <(SELECT avg(student_avg) AS class_avg FROM(SELECT (math+sci+eng+social+sports)/5 AS student_avg FROM student) AS avgs) 
THEN 'Low' ELSE 'High' END AS score_status 
FROM student;