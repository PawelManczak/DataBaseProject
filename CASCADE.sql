SELECT * FROM Konserwator
SELECT * FROM Firma
-- kaskadowe uswanie
DELETE FROM Firma WHERE NIP = '1234567890123'

SELECT * FROM Konserwator

-- usuwanie ze zmiana na nulla

SELECT * FROM Konserwacja
DELETE FROM Zabytek WHERE nazwa = 'Zamek Krzyzacki'
SELECT * FROM Konserwacja

-- kaskadowy uptade

SELECT * FROM Kontrola
UPDATE Firma SET NIP = '321-321-3213' WHERE NIP = '567894210123'
SELECT * FROM Kontrola