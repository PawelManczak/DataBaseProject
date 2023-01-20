-- 1 mati 3/3
-- W związku z ustaleniem statusu dworku XYZ jako zabytek, zostaje ogłoszony nowy przetarg na konserwację. 
--Aby zdobyć zainteresowanie firm przetargiem, należy sporządzić listę danych kontaktowych do firm, 
--które zostaną bezpośrednio poinformowane o przetargu. Urząd zainteresowany jest głównie firmami, 
-- które już wcześniej zajmowały się konserwacją bądź kontrolą zabytku, lecz nie dawniej niż pięć lat temu.
-- Wydobądź numery telefonów i maile firm, które wykonywały ostatnią konserwację 
-- bądź kontrolę mniej niż pięć lat temu.
SELECT Firma.TelefonKontaktowy, Firma.TelefonKontaktowy
FROM Firma
INNER JOIN Przetarg
ON Przetarg.nip = Firma.NIP
INNER JOIN Konserwacja
ON Konserwacja.IdKonserwacji = Przetarg.IdKonserwacji
where Konserwacja.datarozpoczeciaprac <= dateadd(year, -5, getdate())

-- 2 mati 3/3
--  Co roku tworzona jest lista priorytetów na następny rok. Na szczycie listy powinny się znaleźć zabytki, które wymagają jak najszybszych działań, a na końcu te, które są w dobrym stanie.
-- Wydobądź zabytki posortowane je względem 
--a) zaleceń co do konserwacji (jeśli istnieje zalecenie, to znaczy, że jest konieczne działanie)
--b) daty ostatniej kontroli
--c) daty ostatniej konserwacji

-- tutaj trochę bez sensu było, bo nie było podane limitu na date kiedy byla zalecana kontrola
SELECT Zabytek.Nazwa, Max(Konserwacja.DataRozpoczeciaPrac) as DataKonserwacji, MAX(Kontrola.Data) as DataKontroli
FROM Zabytek
INNER JOIN Kontrola
ON Zabytek.Nazwa = Kontrola.Zabytek
INNER JOIN Konserwacja
ON Kontrola.Zabytek = Konserwacja.Zabytek
WHERE Kontrola.CzyZalecanaKontrola = 1

GROUP BY Zabytek.Nazwa ORDER BY DataKonserwacji, DataKontroli

--3 mati 3/3
--Miasto Gdańsk dostało grant na materiały na renowacje swoich zabytków. 
--Chce ono zakupić materiały, które są najczęściej wykorzystywane do konserwacji zabytków. 
--Miasto chciałoby też poznać średnią cenę materiału.
--Dla każdego materiału podsumuj ile do tej pory sztuk danego materiału 
--zostało zużyte w konserwacji zabytków w Gdańsku i wydobądź najczęściej wykorzystywany materiał 
--wraz z jego średnią ceną.
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

-- 1 Michal 3/3
--Scenariusz: Urząd miasta otrzymał wiadomość, że pewna firma niesumiennie dokonywała 
--swoich kontroli i można bezpiecznie stwierdzić, że wszystkie wykonanie przez nie kontrole 
--nie uważa się za ważne. Należałoby ponownie przeprowadzić przeprowadzone przez nią kontrole.
--Zapytanie: Wypisz: opisy i daty kontroli, nazwy oraz adresy zabytków, 
--których kontrolą zajmowała się pewna określona firma.

SELECT Zabytek.nazwa, Adres.Ulica, Adres.NumerBudynku, Adres.miasto, Kontrola.data, Kontrola.Opis
FROM Kontrola
INNER JOIN Zabytek
ON Zabytek.nazwa = Kontrola.Zabytek
INNER JOIN Adres
ON Adres.idadresu = Zabytek.Adres
WHERE Kontrola.NIP = '987654355123' -- <-- tutaj mozna zmienic nip

-- 2 Michal
--Scenariusz: Urząd podejrzewa, że wypatrzył w przetargach na określony materiał oszustwo, 
--polegające na zakupie materiałów za kilkukrotnie wyższą cenę, niż przeciętnie.
--Zapytanie: Wypisz osobę odpowiedzialną za zakup określonego typu materiału, 
--którego cena była conajmniej dwukrotnie większa niż średnia cena tego typu materiału.
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
--Scenariusz: Pewien zabytek uległ zniszczeniu przez niedokładną konserwację. 
--Urząd miasta planuje wyciągnąć konsekwencje.
--Zapytanie: Wypisz dane firm(y), które/a były/a odpowiedzialne/a za konserwację określonego zabytku 
--w ciągu ostatnich 180 dni.

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