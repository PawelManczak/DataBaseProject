CREATE TABLE Teachers
   (Tno      CHAR(3) PRIMARY KEY,
    Tname CHAR(12),
    Title 	CHAR(6),
    City      CHAR(12),
    SupNo CHAR(3) REFERENCES Teachers);
    
CREATE TABLE Students
   (Sno     	CHAR(3) PRIMARY KEY,
    Sname	CHAR(12),
    Syear   	DATE,
    City     	CHAR(12));

CREATE TABLE Courses
   (Cno     	CHAR(3) PRIMARY KEY,
    Cname	CHAR(12),
    Studyear    SMALLINT);

CREATE TABLE TSC
   (Tno 	CHAR(3) REFERENCES Teachers,
    Sno 	CHAR(3) REFERENCES Students,
    Cno 	CHAR(3) REFERENCES Courses,
    Hours 	INT,
    Grade       Numeric (2,1) CHECK (Grade IN (2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0)),
    PRIMARY KEY (Tno, Sno, Cno));
