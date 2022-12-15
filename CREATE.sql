CREATE TABLE Adres (
    IdAdresu int PRIMARY KEY,
    Ulica char(60),
    NumerBudynku char(5) NOT NULL,
    Miasto char(30) NOT NULL,
    KodPocztowy char(7) NOT NULL
);

CREATE TABLE Zabytek(
Nazwa char(50) CHECK(LEN(Nazwa) >= 5) PRIMARY KEY,
Stan char(30),
JednostkaOrganizacyjna char(50),
Adres int UNIQUE FOREIGN KEY REFERENCES Adres(IdAdresu) ON DELETE SET NULL
 );



CREATE TABLE Konserwacja(
IdKonserwacji int PRIMARY KEY,
Zleceniodawca char(50),
PrzewidywanaDataZakonczenia  date CHECK( PrzewidywanaDataZakonczenia >= '2000-01-01'),
DataRozpoczeciaPrac date CHECK(DataRozpoczeciaPrac >= '2000-01-01'),
PrzewidywanaKwotaDoWydania float CHECK(PrzewidywanaKwotaDoWydania >= 0.0),

Zabytek char(50) Foreign KEY REFERENCES Zabytek(Nazwa) ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE Firma(
NIP char(13) PRIMARY KEY,
Nazwa char(160) NOT NULL,
Prezes char(50),
TelefonKontaktowy char(20) NOT NULL,
Email char(30)
);

CREATE TABLE Przetarg(
IdPrzetargu int PRIMARY KEY,
KwotaDoWydania float CHECK(KwotaDoWydania >= 0.0),
OsobaZarzadzajaca char(50),
CzyZatwierdzony BIT,
Data date,

IdKonserwacji int Foreign KEY REFERENCES Konserwacja(IdKonserwacji) ON DELETE SET NULL,
NIP char(13) Foreign KEY REFERENCES Firma(NIP) ON UPDAtE CASCADE ON DELETE SET NULL
);

CREATE TABLE Konserwator(
NrPracownika char(20) PRIMARY KEY,
Imie char(30),
Nazwisko char(30) UNIQUE NOT NULL,

NIP char(13) Foreign KEY REFERENCES Firma(NIP) ON UPDAtE CASCADE ON DELETE CASCADE
);

CREATE TABLE Kontrola(
IdKontroli int PRIMARY KEY,
Data date CHECK( Data >= '2000-01-01'),
CzyZalecanaKontrola BIT,
Opis char(2048) CHECK(LEN(Opis) >= 4),

Zabytek char(50) Foreign KEY REFERENCES Zabytek(Nazwa) ON UPDAtE CASCADE ON DELETE SET NULL,
NIP char(13) Foreign KEY REFERENCES Firma(NIP) ON UPDAtE CASCADE ON DELETE SET NULL
);

CREATE TABLE PrzetargNaMaterialy(
IdPrzetarguNaMaterialy int PRIMARY KEY,
OsobaOdpowiedzialna char (50),
CzyZatwierdzony BIT,
KwotaDoWydania float CHECK(KwotaDoWydania >= 0.0),
Data date CHECK( Data >= '2000-01-01'),

IdPrzetargu int Foreign KEY REFERENCES Przetarg(IdPRzetargu) ON DELETE SET NULL
);

CREATE TABLE TypMaterialu(
Nazwa char(60) PRIMARY KEY,
Kolor char(50)
);

CREATE TABLE Material(
KodKreskowy char(256) PRIMARY KEY,
Cena float CHECK(Cena >= 0.0),
Ilosc float CHECK(Ilosc > 0.0),

IdPrzetarguNaMaterialy int Foreign key references PrzetargNaMaterialy(IdPrzetarguNaMaterialy),
TypMaterialu char(60) Foreign key references TypMaterialu(Nazwa) ON UPDAtE CASCADE ON DELETE SET NULL
);


