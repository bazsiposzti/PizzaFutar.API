🍕 PizzaFutár - Backend API Gyakorló Feladat

Téma: ASP.NET Core Web API, Entity Framework, DTO-k, CRUD műveletek
A Szituáció

A "Gyors Szelet Kft." pizzériának szüksége van egy modern nyilvántartó rendszerre.
A cég szeretné látni, hogy melyik futár milyen kiszállításokat teljesített, és szeretnék, ha az új rendeléseket is rögzíteni lehetne a rendszerben. 
A te feladatod egy Web API készítése, amely kiszolgálja ezt az igényt.

0.) Töltse fel a MySQL adatbázist a melléklet mappában található pizzafutar.sql fájl alapján. Nyissa meg a PizzaFutar.API ASP.NET Core Web API projektet!

1.) Telepítse a szükséges NuGet csomagokat (EntityFrameworkCore, EntityFrameworkCore.Tools,  Pomelo.EntityFrameworkCore.MySql) és végezze el az adatbázis scaffoldolását (a parancs megtalálható a melléklet mappában)

2.) Adatbázis kapcsolat Konfigurálja a kapcsolatot az appsettings.json fájlban a megfelelő felhasználónévvel és jelszóval.

3.) Hozzon létre egy KiszallitasDto nevű osztályt a DTOs mappában. Az API-nak pontosan ilyen JSON formátumot kell visszaadnia (figyeljen a kisbetűs nevekre!):

```json
{
  "rendeles_azonosito": 1,
  "futar_neve": "Sebes István",
  "pizza_tipus": "Sonkás",
  "vegosszeg": 2700,
  "datum": "2023.10.01."
}
```

4.) Készítsen egy RendelesExtensions osztályt, benne egy ToDto() metódussal, amely elvégzi az átalakítást az adatbázis entitás (Rendeles) és a DTO (KiszallitasDto) között.
Ügyeljen a borravaló null értékének kezelésére!

5.) Készítsen egy RendelesekController-t. Hozzon létre egy végpontot (GET api/Rendelesek), amely visszaadja az összes kiszállítást a fenti formátumban.

6.) Egy rendelés lekérése Hozzon létre egy végpontot, amely ID alapján ad vissza egy rendelést  (api/Rendelesek/{id}). Ha az ID nem létezik, a válasz legyen 404 Not Found.

7.) Keresés futár neve alapján Hozzon létre egy végpontot (GET api/Rendelesek/futar/{nev}), amely kilistázza azokat a rendeléseket, ahol a futár neve tartalmazza a megadott szövegrészletet (pl. "Sebes").

8.) Új rendelés felvétele Hozzon létre egy végpontot (POST api/Rendelesek), amivel új rendelést lehet rögzíteni.

* Hozzon létre hozzá egy külön UjRendelesDto-t (bemeneti adatok: FutarId, PizzaId, Cim, Borravalo).
* Sikeres mentés esetén adjon vissza 200 OK vagy 201 Created választ.
    
9.) Hozzon létre egy végpontot (DELETE api/Rendelesek/{id}), amivel ID alapján törölhetünk egy téves rendelést. Ha sikeres, a válasz legyen 204 No Content.
