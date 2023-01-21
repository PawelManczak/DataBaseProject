SELECT Material.TypMaterialu FROM Material
WHERE Material.idprzetargunamaterialy = (SELECT MAX(Material.IdPrzetarguNaMaterialy)
                         FROM Material)
                         --najnowszy przetarg
                         
-- najczesciej uzywane materialy                         
SELECT Material.TypMaterialu FROM Material
WHERE Material.ilosc = (
  SELECT MAX(Material.ilosc) FROM Material)
GROUP by Material.TypMaterialu