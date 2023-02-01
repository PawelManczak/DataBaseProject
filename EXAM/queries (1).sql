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

--11
SELECT Students.Sno, Students.Sname , AVG(TSC.grade)
FROM Students, TSC
WHERE Students.Sno = TSC.Sno
GROUP BY Students.sno, Students.Sname 
ORDER BY AVG(TSC.Grade) DESC

--13
SELECT Teachers.tno
FROM Teachers
WHERE Teachers.supno is null

--14
SELECT Teachers.Tname, Teachers.Tno, Teachers.Title, count(TSC.TNO)
FROM Teachers, TSC
WHERE Teachers.Tno = TSC.tno
GROUP BY Teachers.Tname, Teachers.Tno, Teachers.title
having count(TSC.TNO) > 3.0

--15
SELECT Students.Sno, Students.Sname
FROM Students
INNER JOIN TSC on TSC.Sno = Students.sno
WHERE TSC.Grade = 5.0
GROUP BY Students.Sno, Students.Sname

--16
SELECT TSC.sno, Students.Sname
FROM Students, TSC
WHERE TSC.sno = Students.Sno
and tsc.Grade = (
	select MAX(grade)
 	 FROM TSC
)

--17 
Select Count(distinct Students.Sno)
FROM Students
inner join tsc on tsc.Sno = Students.Sno
inner join Courses on Courses.Cno = tsc.Cno
where Courses.Cname = 'Mathematics' and Courses.studyear = 2
