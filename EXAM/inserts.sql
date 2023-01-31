Insert into Teachers
   Values ('T1', 'Blake', 'Prof.', 'London',NULL),
          ('T2', 'Smith', 'PhD', 'Glasgow','T1'),
	  ('T3', 'Jones', 'Prof.', 'London', 'T1'),
	  ('T4', 'Clark', 'PhD', 'Liverpool', 'T3'),
	  ('T5', 'Adams', 'MSc', 'Bristol', 'T4');

Insert into Students
   Values ('S1', 'Henry', '1995-01-01',	'London'),
	  ('S2', 'Jones', '1990-01-01',	'Davos'),
	  ('S3', 'Johnson', '1993-01-01', 'Dublin'),
	  ('S4', 'Higgins', '2004-01-01', 'London'),
	  ('S5', 'Ford', '1998-01-01', 'Bristol'),
	  ('S6', 'Hopkins', '2001-01-01', 'Adelaide');

Insert into Courses Values
    ('C1', 'Mathematics', 1),
    ('C2', 'Mathematics', 2),
    ('C3', 'Physics', 2),
    ('C4', 'English', 1),
    ('C5', 'Chemistry', 2);

Insert into TSC Values 
    ('T1', 'S1', 'C1', 40, 5.0),
    ('T1', 'S1', 'C2', 24, 2.0),
    ('T1', 'S2', 'C1', 64, 3.5),
    ('T2', 'S2', 'C3', 100, 3.5),
    ('T2', 'S3', 'C2', 100, 4.5),
    ('T2', 'S3', 'C3', 20, 4.0),
    ('T2', 'S4', 'C2', 90, 2.0),
    ('T2', 'S4', 'C3', 30, 3.0),
    ('T3', 'S1', 'C4', 32, 3.0),
    ('T3', 'S2', 'C4', 36, 2.0),
    ('T3', 'S3', 'C4', 60, 5.0),
    ('T3', 'S5', 'C4', 72, 4.5),
    ('T4', 'S1', 'C1', 60, 3.5),
    ('T4', 'S1', 'C3', 36, 3.5),
    ('T4', 'S3', 'C1', 60, 3.0),
    ('T4', 'S3', 'C3', 36, 3.0),
    ('T4', 'S5', 'C1', 96, 4.0),
    ('T5', 'S6', 'C5', 32, 4.0);


