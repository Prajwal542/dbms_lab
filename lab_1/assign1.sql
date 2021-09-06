CREATE TABLE student (

    name VARCHAR(20),
    rollno INT PRIMARY KEY,
    age INT,
    math INT,
    sci INT,
    eng INT,
    social INT,
    sports INT

);

CREATE TABLE campus(
    name VARCHAR(20),
    cid INT PRIMARY KEY,
    loc VARCHAR(20),
    cap INT,
    law BOOL,
    engg BOOL,
    buss BOOL
);


INSERT INTO student VALUE
('dwayne', 33, 21, 98, 94, 91, 96, 55),
('john', 58, 18, 70, 87, 77, 98, 67),
('dave', 27, 22, 54, 68, 98, 96, 77),
('randy', 56, 19, 69, 75, 65, 67, 98),
('kane', 11, 22, 86, 95, 52, 57, 73),
('tom', 50, 21, 76, 84, 62, 74, 81);

INSERT INTO campus VALUES
('mec', 101, 'hyd', 1000, 1, 1, 1),
('muc', 104, 'mad', 2000, 0, 1, 1),
('mgt', 107, 'bom', 1500, 1, 0, 1);

SELECTFROM student;

SELECTFROM campus;

DROP TABLE student;

DROP TABLE campus;

/1/
SELECT cid
FROM campus
WHERE law = 1;

/2/
SELECT name, rollno, age, math, sci, sports
FROM student
WHERE name = 'dave';

/3/
SELECT name, rollno
FROM student
WHERE math > 80
OR sci > 80;

/4/
SELECT DISTINCT social
FROM student;

/5/
SELECT COUNT() AS 'Number of Students who failed English'
FROM student
WHERE eng < 70;

/6/
SELECT name, rollno
FROM student
ORDER BY math + sci DESC LIMIT 0, 1;

/7/
SELECT loc
FROM campus
WHERE engg = 0;

/8/
SELECT SUM(capengg)/SUM(cap) AS 'Ratio of STEM to non-STEM'
FROM campus;

/9/
SELECT name AS 'ALL Rounders'
FROM student
WHERE (math + sci + eng + social + sports)/5 > 70;

/10/
SELECT COUNT() AS 'ROLL b/w 0 and 20'
FROM student
WHERE rollno < 20
AND rollno >= 0;

SELECT COUNT() AS 'ROLL b/w 20 and 40'
FROM student
WHERE rollno < 40
AND rollno >= 20;

SELECT COUNT() AS 'ROLL b/w 40 and 60'
FROM student
WHERE rollno < 60
AND rollno >= 40;

SELECT COUNT() AS 'ROLL b/w 60 and 80'
FROM student
WHERE rollno < 80
AND rollno >= 60;

SELECT COUNT(*) AS 'ROLL b/w 80 and 100'
FROM student
WHERE rollno < 100
AND rollno >= 80;
