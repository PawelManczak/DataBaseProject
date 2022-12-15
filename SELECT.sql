-- Jakich typow materialow uzyto dotychczas przy konserwacjach zamku?
SELECT Zabytek.Nazwa, Material.TypMaterialu
From Zabytek
	INNER JOIN Konserwacja
    ON Konserwacja.Zabytek = Zabytek.Nazwa and Zabytek.nazwa = 'Zamek Krzyzacki'
    INNER JOIN Przetarg
    ON Przetarg.idkonserwacji = Konserwacja.IdKonserwacji
    INNER JOIN PrzetargNaMaterialy
    ON PrzetargNaMaterialy.IdPrzetargu = Przetarg.IdPrzetargu
    INNER JOIN Material
    ON Material.IdPrzetarguNaMaterialy = PrzetargNaMaterialy.IdPrzetarguNaMaterialy
    --and Material.TypMaterialu = 'Cement'
    
   /* SELECT Zabytek.Nazwa, Konserwacja.IdKonserwacji, Konserwacja.Zabytek, 
Przetarg.idkonserwacji, Przetarg.idprzetargu,
PrzetargNaMaterialy.IdPrzetargu, PrzetargNaMaterialy.IdPrzetarguNaMaterialy,
Material.IdPrzetarguNaMaterialy, Material.TypMaterialu*/

-- Jakie Zabytki znajduja sie w miescie Bytow?
SELECT Zabytek.nazwa, Adres.Miasto
FROM Zabytek
	INNER JOIN Adres
    ON Zabytek.Adres = Adres.IdAdresu and Adres.Miasto = 'Bytow'
    
-- Jakie zabytki sa w stanie 'w uzyciu'Adres
SELECT nazwa FROM Zabytek WHERE stan = 'w uzyciu'

-- suma wszystkich przewidywanych kosztow w histori danego zabytku
Select Konserwacja.Zabytek, SUM(Konserwacja.przewidywanakwotadowydania) AS PrzewidwynaWydanaKwota
FROM Konserwacja GROUP BY Konserwacja.Zabytek

--liczenie ile razy uzyto danego typu materialui
SELECT Material.TypMaterialu, COUNT(Material.TypMaterialu) as Licznik
From Material GROUP BY Material.TypMaterialu

