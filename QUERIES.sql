-- 1 mati
SELECT Firma.TelefonKontaktowy, Firma.TelefonKontaktowy
FROM Firma
INNER JOIN Przetarg
ON Przetarg.nip = Firma.NIP
INNER JOIN Konserwacja
ON Konserwacja.IdKonserwacji = Przetarg.IdKonserwacji
where Konserwacja.datarozpoczeciaprac <= dateadd(year, -5, getdate())

-- 2 mati


