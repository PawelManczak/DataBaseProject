CREATE VIEW temp
(srednia, TypMaterialu)
AS
SELECT AVG(Material.cena)as srednia, Material.TypMaterialu
FROM Material
GROUP by Material.TypMaterialu

--SELECT * FROM temp
--DROP VIEW widok

SELECT Material.TypMaterialu, Material.cena as wydanaKwota, PrzetargNaMaterialy.OsobaOdpowiedzialna, temp.srednia AS SredniaCena
FROM Material
INNER JOIN PrzetargNaMaterialy
ON PrzetargNaMaterialy.idprzetargunamaterialy = Material.idprzetargunamaterialy
INNER JOIN temp
ON temp.typmaterialu = Material.TypMaterialu
WHERE Material.cena > 2.0 * temp.srednia

DROP VIEW temp

