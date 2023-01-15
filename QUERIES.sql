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

--3 mati
SELECT Material.TypMaterialu, SUM(Material.ilosc) as iloscMaterialow, AVG(Material.cena) as sredniaCena FROM Material
INNER JOIN PrzetargNaMaterialy
ON Material.IdPrzetarguNaMaterialy = PrzetargNaMaterialy.IdPrzetarguNaMaterialy
INNER JOIN Przetarg
ON PrzetargNaMaterialy.IdPrzetargu = Przetarg.IdPrzetargu
INNER JOIN Konserwacja
ON Przetarg.idkonserwacji = Konserwacja.IdKonserwacji
INNER JOIN Zabytek
ON Konserwacja.Zabytek = Zabytek.Nazwa
INNER JOIN Adres
ON Zabytek.Adres = Adres.idadresu
WHERE Adres.Miasto ='Bytow' -- tutaj mozna zmienic na gda

GROUP BY Material.TypMaterialu

-- 1 Michal
SELECT Zabytek.nazwa, Adres.Ulica, Adres.NumerBudynku, Adres.miasto, Kontrola.data, Kontrola.Opis
FROM Kontrola
INNER JOIN Zabytek
ON Zabytek.nazwa = Kontrola.Zabytek
INNER JOIN Adres
ON Adres.idadresu = Zabytek.Adres
WHERE Kontrola.NIP = '987654355123' -- <-- tutaj mozna zmienic nip

-- 2 Michal

SELECT AVG(Material.cena)as srednia, Material.TypMaterialu
INTo #temp
FROM Material
GROUP by Material.TypMaterialu

--SELECT * FROM #temp

SELECT Material.TypMaterialu, Material.cena as wydanaKwota, PrzetargNaMaterialy.OsobaOdpowiedzialna, #temp.srednia AS SredniaCena
FROM Material
INNER JOIN PrzetargNaMaterialy
ON PrzetargNaMaterialy.idprzetargunamaterialy = Material.idprzetargunamaterialy
INNER JOIN #temp
ON #temp.typmaterialu = Material.TypMaterialu
WHERE Material.cena > 2.0 * #temp.srednia

-- 3 Michal
-- w celu czytelnosci ograniczylem liczbe kolumn, mimo tego, ze w zadaniu bylo, ze wszytskie
SELECT Firma.NIP, Firma.Nazwa, Zabytek.nazwa, Konserwacja.DataRozpoczeciaPrac
FROM Firma
INNER JOIN Przetarg
ON Przetarg.NIP = Firma.nip
INNER JOIN Konserwacja
ON Konserwacja.IdKonserwacji = Przetarg.idkonserwacji
INNER JOIN Zabytek
ON Zabytek.nazwa = Konserwacja.Zabytek
WHERE Zabytek.nazwa = 'Zamek Krzyzacki' -- tutaj nazwa zabytku
AND Konserwacja.DataRozpoczeciaPrac <= dateadd(dd,-180,getdate())