-- 1 mati
SELECT Firma.TelefonKontaktowy, Firma.TelefonKontaktowy
FROM Firma
INNER JOIN Przetarg
ON Przetarg.nip = Firma.NIP
INNER JOIN Konserwacja
ON Konserwacja.IdKonserwacji = Przetarg.IdKonserwacji
where Konserwacja.datarozpoczeciaprac <= dateadd(year, -5, getdate())

-- 2 mati
-- tutaj trochę bez sensu było, bo nie było podane limitu na date kiedy byla zalecana kontrola
SELECT Zabytek.Nazwa, Max(Konserwacja.DataRozpoczeciaPrac) as DataKonserwacji, MAX(Kontrola.Data) as DataKontroli
FROM Zabytek
INNER JOIN Kontrola
ON Zabytek.Nazwa = Kontrola.Zabytek
INNER JOIN Konserwacja
ON Kontrola.Zabytek = Konserwacja.Zabytek
WHERE Kontrola.CzyZalecanaKontrola = 1

GROUP BY Zabytek.Nazwa ORDER BY DataKonserwacji, DataKontroli

