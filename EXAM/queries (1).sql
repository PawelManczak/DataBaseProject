-- 1
SELECT Courses.cno
from Courses
where Courses.Studyear = 1
ORDER BY Courses.Cname ASC

--2
SELECT COUNT(*)
FROM Students
WHERE Students.Sname LIKE 'H%'

--3
SELECT Students.city, Count(Students.city)
FROM Students
Group by Students.city

--4
SELECT DISTINCT Teachers.Tno, Teachers.Title, Teachers.Tname, Courses.Cno, Courses.Cname
FROM Teachers
INNER JOIN TSC ON Teachers.Tno = TSC.Tno
INNER JOIN Courses ON Tsc.Cno = Courses.Cno

SELECT DISTINCT Teachers.Tno, Teachers.Title, Teachers.Tname, Courses.Cno, Courses.Cname
FROM Teachers, Courses, TSC
WHERE Teachers.Tno = TSC.Tno
and TSC.Cno = Courses.Cno

--5
SELECT Teachers.tno 
FROM Teachers
WHERE TNO not IN
(
  SELECT Teachers.tno
  FROM Teachers, TSC, Courses
  WHERE Teachers.Tno = TSC.Tno
  and Courses.Cno = TSC.cno
  and Courses.Studyear = 1
 )
 
 --6
 SELECT TOP 1 Courses.Studyear, COUNT(*)
 FROM Courses
 GROUP BY Courses.Studyear
 ORDER BY  COUNT(*) ASC 
 
 --7
 SELECT TOP 1 Students.Syear, AVG(TSC.Grade)
 FROM Students, TSC
 WHERE Students.Sno = TSC.Sno
 GROUP BY Students.Syear
 ORDER BY AVG(TSC.Grade) desc

--8
SELECT COUNT(*)
FROM Teachers
WHERe Teachers.Tno not in
(
	SELECT Teachers.Tno
  	FROM Teachers, TSC
  	WHERE Teachers.tno = TSC.tno
)

--9
SELECT Courses.studyear, SUM(TSC.Hours) 
FROM Courses, TSC
WHERE Courses.Cno = TSC.Cno
GROUP BY Courses.Studyear

--10
SELECT TOP 1 Students.Sno, AVG(TSC.grade)
FROM Students, TSC
WHERE Students.Sno = TSC.Sno
GROUP BY Students.sno
ORDER BY AVG(TSC.Grade) DESC