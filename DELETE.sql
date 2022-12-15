ALTER table Zabytek nocheck CONSTRAINT all
	DELETE FROM Adres
ALTER table Zabytek check CONSTRAINT all


ALTER table Kontrola nocheck CONSTRAINT all
	DELETE FROM Zabytek
ALTER table Kontrola check CONSTRAINT all

DELETE FROM Kontrola

ALTER table Przetarg nocheck CONSTRAINT all
	DELETE FROM Konserwacja
ALTER table Przetarg check CONSTRAINT all

ALTER table PrzetargNaMaterialy nocheck CONSTRAINT all
	DELETE FROM Przetarg
ALTER table PrzetargNaMaterialy check CONSTRAINT all

ALTER table Material nocheck CONSTRAINT all
	DELETE FROM PrzetargNaMaterialy
ALTER table Material check CONSTRAINT all

ALTER table Przetarg nocheck CONSTRAINT all
ALTER table Konserwator nocheck CONSTRAINT all
	DELETE FROM Firma
ALTER table Konserwator check CONSTRAINT all
ALTER table Przetarg check CONSTRAINT all

	DELETE FROM Material

	DELETE FROM Konserwator

ALTER table Material nocheck CONSTRAINT all
	DELETE FROM TypMaterialu
ALTER table Material check CONSTRAINT all


