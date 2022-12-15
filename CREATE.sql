CREATE TABLE Adres (
    IdAdresu int PRIMARY KEY,
    Ulica varchar(255),
    NumerBudynku varchar(255),
    Miasto varchar(255),
    KodPocztowy varchar(255)
);

CREATE TABLE Zabytek(
Nazwa varchar(255) PRIMARY KEY,
Stan varchar(255),
JednostkaOrganizacyjna varchar(255),
Adres int FOREIGN KEY REFERENCES Adres(IdAdresu)
);



CREATE TABLE Konserwacja(
IdKonserwacji int PRIMARY KEY,
Zleceniodawca varchar(255),
PrzewidywanaDataZakonczenia  date,
DataRozpoczeciaPraca date,
PrzewidywanaKwotaDoWydania float,

Zabytek varchar(255) Foreign KEY REFERENCES Zabytek(Nazwa)
);

CREATE TABLE Firma(
NIP varchar(13) PRIMARY KEY,
Nazwa varchar(255),
Prezes varchar(255),
TelefonKontaktowy varchar(255),
Email varchar(255)
);

CREATE TABLE Przetarg(
IdPrzetargu int PRIMARY KEY,
KwotaDoWydania float,
OsobaZarzadzajaca varchar(255),
CzyZatwierdzony BIT,
Data date,

IdKonserwacji int Foreign KEY REFERENCES Konserwacja(IdKonserwacji),
NIP varchar(13) Foreign KEY REFERENCES Firma(NIP)
);

CREATE TABLE Konserwator(
NrPracownika varchar(20) PRIMARY KEY,
Imie varchar(30),
Nazwisko varchar(30),

NIP varchar(13) Foreign KEY REFERENCES Firma(NIP)
);

CREATE TABLE Kontrola(
IdKontroli int PRIMARY KEY,
Data date,
CzyZalecanaKontrola BIT,
Opis varchar(2048),

Zabytek varchar(255) Foreign KEY REFERENCES Zabytek(Nazwa),
NIP varchar(13) Foreign KEY REFERENCES Firma(NIP)
);

CREATE TABLE PrzetargNaMaterialy(
IdPrzetarguNaMaterialy int PRIMARY KEY,
OsobaOdpowiedzialna varchar (255),
CzyZatwierdzony BIT,
KwotaDoWydania float,
Data date,

IdPrzetargu int Foreign KEY REFERENCES Przetarg(IdPRzetargu)
);

CREATE TABLE TypMaterialu(
Nazwa varchar(255) PRIMARY KEY,
Kolor varchar(50)
);

CREATE TABLE Material(
KodKreskowy varchar(256) PRIMARY KEY,
Cena float,
Ilosc float,

IdPrzetarguNaMaterialy int Foreign key references PrzetargNaMaterialy(IdPrzetarguNaMaterialy),
TypMaterialu varchar(255) Foreign key references TypMaterialu(Nazwa)
);


