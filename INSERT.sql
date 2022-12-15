INSERT INTO Adres
VALUES	(1, 'Mickiewicza', '19', 'Bytow', '77-100'),
		(2, 'Kochanowskiego', '14', 'Bytow', '77-100'),
		(3, 'Kochanowskiego', '10', 'Bytow', '77-100'),
		(4, 'Wojska Polskiego', '15/62', 'Bytow', '77-100'),
		(5, 'Sikorskiego', '24', 'Bytow', '77-100'),
		(6, 'Sikorskiego', '124', 'Bytow', '77-100'),
		(7, 'Sikorskiego', '24', 'Bytow', '77-100'),
		(8, 'Mickiewicza', '21', 'Bytow', '77-100'),
		(9, 'Mickiewicza', '34', 'Bytow', '77-100'),
		(10, 'Mickiewicza', '134', 'Bytow', '77-100');

INSERT INTO Zabytek
Values ('Zamek Krzyzacki', 'w uzyciu', 'Urzad Miasta Bytow', 1),
		('Kosciol sw Katarzyny', 'w uzyciu', 'Diecezja w Pelpinie', 2),
		('Kosciol sw Genowefy', 'w uzyciu', 'Diecezja w Pelpinie', 3),
		('Cerkiew sw Jerzego', 'w uzyciu', 'Urzad Miasta Bytow', 4),
		('Ruiny starego kosciola sw Katarzyny', 'do remontu', 'Urzad Miasta Bytow', 5),
		('Stary most kolejowy', 'w uzyciu', 'Urzad Miasta Bytow', 6),
		('Zabytkowe kamiennice na Sikorskiego', 'w uzyciu','Urzad Miasta Bytow', 7),
		('Stary cmentarz zydowski', 'w uzyciu', 'Urzad Miasta Bytow', 8),
		('Stary cmentarz niemiecki', 'w uzyciu','Urzad Miasta Bytow', 9),
		('Zabytkowe kamiennice na Mickiewicza', 'w uzyciu', 'Urzad Miasta Bytow', 10);

	
INSERT INTO Konserwacja
VALUES (1, 'Urzad Miasta Bytow', '2022-12-30', '2022-12-01', 1000.00, 'Cerkiew sw Jerzego'),
(2,'Urzad Miasta Bytow', '2022-12-31', '2022-12-15', 2000.00, 'Zamek Krzyzacki'),
(3,'Urzad Miasta Bytow', '2022-12-20', '2022-12-05', 1500.00, 'Zamek Krzyzacki'),
(4,'Urzad Miasta Bytow', '2022-12-10', '2022-11-15', 5000.00, 'Zamek Krzyzacki'),
(5, 'Urzad Miasta Bytow', '2022-12-01', '2022-11-01', 2500.00, 'Cerkiew sw Jerzego'),
(6, 'Urzad Miasta Bytow', '2022-08-01', '2022-06-01', 2000, 'Cerkiew sw Jerzego'),
(7, 'Urzad Miasta Bytow', '2022-09-15', '2022-06-15', 1500, 'Stary most kolejowy'),
(8, 'Urzad Miasta Bytow', '2022-09-30', '2022-06-30', 5000, 'Zamek Krzyzacki'),
(9, 'Starostwo Bytow', '2022-10-31', '2022-08-15', 4000,'Stary most kolejowy'),
(10, 'Starostwo Bytow', '2022-11-30', '2022-09-01', 6000, 'Stary cmentarz niemiecki');






INSERT INTO Firma
VALUES	('1234567890123', 'Firma1', 'Jan Kowalski', '123456789', 'firma1@gmail.com'),
		('9876543210123', 'Firma2', 'Jan Nowak', '987654321', 'firma2@gmail.com'),
		('2345678910123', 'Firma3', 'Jan Zalewski', '234567891', 'firma3@gmail.com'),
		('9876543120123', 'Firma4', 'Jan Wiśniewski', '987654312', 'firma4@gmail.com'),
		('3456789210123', 'Firma5', 'Jan Wójcik', '345678921', 'firma5@gmail.com'),
		('9876543230123', 'Firma6', 'Jan Kowalczyk', '987654323', 'firma6@gmail.com'),
		('456789310123', 'Firma7', 'Jan Dąbrowski', '45678931', 'firma7@gmail.com'),
		('987654334123', 'Firma8', 'Jan Lewandowski', '987654334', 'firma8@gmail.com'),
		('567894210123', 'Firma9', 'Jan Kamiński', '56789421', 'firma9@gmail.com'),
		('987654355123', 'Firma10', 'Jan Szulc', '987654355', 'firma10@gmail.com');

INSERT INTO Przetarg
VALUES	(1, 1000.50, 'Jan Nowak', 1, '2022-12-01', 1, '1234567890123'),
		(2, 2000.75, 'Jan Zalewski', 1, '2022-12-05', 2, '9876543210123'),
		(3, 500.00, 'Jan Wiśniewski', 0, '2022-12-07', 3, '2345678910123'),
		(4, 3000.00, 'Jan Wójcik', 1, '2022-12-10', 4, '9876543120123'),
		(5, 1500.25, 'Jan Kowalczyk', 1, '2022-12-12', 5, '3456789210123'),
		(6, 2500.50, 'Jan Dąbrowski', 0, '2022-12-15', 6, '9876543230123'),
		(7, 100.00, 'Jan Lewandowski', 1, '2022-12-20', 7, '456789310123'),
		(8, 150.00, 'Jan Lewandowski', 1, '2022-12-25', 8, '456789310123'),
        (9, 1000.00, 'Jan Kowalczyk', 1, '2022-12-20', 9, '456789310123'),
		(10, 1520.00, 'Jan Kowalczyk', 1, '2022-12-25', 10, '456789310123');


INSERT INTO Konserwator
VALUES ('1', 'Jan', 'Kowalski', '1234567890123'),
('2', 'Anna', 'Nowak', '1234567890123'),
('3', 'Piotr', 'Majewski', '1234567890123'),
('4', 'Katarzyna', 'Jankowska', '1234567890123'),
('5', 'Tomasz', 'Wojciechowski', '987654355123'),
('6', 'Marta', 'Kaczmarek', '987654355123'),
('7', 'Mateusz', 'Dudek', '987654355123'),
('8', 'Agata', 'Zielinska', '567894210123'),
('9', 'Dawid', 'Wieczorek', '567894210123'),
('10', 'Magdalena', 'Gajewska', '567894210123');

INSERT INTO Kontrola
VALUES (1, '2022-12-15', 0, 'Kontrola zewnętrzna', 'Zamek Krzyzacki', '567894210123'),
(2, '2022-12-15', 1, 'Kontrola wewnętrzna', 'Zamek Krzyzacki', '567894210123'),
(3, '2022-12-16', 0, 'Kontrola zewnętrzna', 'Zamek Krzyzacki', '567894210123'),
(4, '2022-12-16', 1, 'Kontrola wewnętrzna', 'Zamek Krzyzacki','987654355123'),
(5, '2022-12-17', 0, 'Kontrola zewnętrzna', 'Stary most kolejowy', '987654355123'),
(6, '2022-12-17', 1, 'Kontrola wewnętrzna', 'Stary most kolejowy',  '987654355123'),
(7, '2022-12-18', 0, 'Kontrola zewnętrzna', 'Stary most kolejowy', '9876543230123'),
(8, '2022-12-18', 1, 'Kontrola wewnętrzna', 'Stary most kolejowy',  '9876543230123'),
(9, '2022-12-19', 0, 'Kontrola zewnętrzna', 'Stary cmentarz niemiecki',  '9876543230123'),
(10, '2022-12-19', 1, 'Kontrola wewnętrzna', 'Stary cmentarz niemiecki',  '9876543230123');

INSERT INTO PrzetargNaMaterialy
VALUES (1, 'Jan Kowalski', 1, 1000.00, '2022-12-01', 1),
(2, 'Anna Nowak', 1, 2000.00, '2022-12-02', 2),
(3, 'Kamil Wojciechowski', 1, 3000.00, '2022-12-03', 3),
(4, 'Karolina Zielinska', 1, 4000.00, '2022-12-04', 4),
(5, 'Piotr Kowalczyk', 0, 5000.00, '2022-12-05', 5),
(6, 'Agnieszka Kwiatkowska', 0, 6000.00, '2022-12-06', 6),
(7, 'Marcin Wozniak', 1, 7000.00, '2022-12-07', 7),
(8, 'Magdalena Nowakowska', 1, 8000.00, '2022-12-08', 8),
(9, 'Adam Kaczynski', 0, 9000.00, '2022-12-09', 9),
(10, 'Ewa Kwiatkowska', 1, 10000.00, '2022-12-10', 10);

INSERT INTO TypMaterialu
VALUES ('Cement', 'Szary'),
('Plyta OSB', 'Szara'),
('Plyta gipsowa', 'Biala'),
('Klej do plyt gipsowych', 'Bialy'),
('Farba emulsyjna', 'Biala'),
('Plyta karton-gips', 'Szara'),
('Tynk mineralny', 'Szary'),
('Farba akrylowa', 'Biala'),
('Pistolet malarski', 'Srebrny'),
('Nozyce do blachy', 'Srebrne');

INSERT INTO Material
VALUES ('1234567890123', 10.00, 5.00, 1, 'Cement'),
('2345678901234', 20.00, 10.00, 2, 'Plyta OSB'),
('3456789012345', 30.00, 15.00, 3, 'Plyta gipsowa'),
('4567890123456', 40.00, 20.00, 4, 'Klej do plyt gipsowych'),
('5678901234567', 50.00, 25.00, 5, 'Farba emulsyjna'),
('6789012345678', 60.00, 30.00, 6, 'Plyta karton-gips'),
('7890123456789', 70.00, 35.00, 7, 'Tynk mineralny'),
('8901234567890', 80.00, 40.00, 8, 'Farba akrylowa'),
('8912344547890', 120.00, 40.00, 8, 'Pistolet malarski'),
('8912344532390', 160.00, 40.00, 8, 'Nozyce do blachy');








