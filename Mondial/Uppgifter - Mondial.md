# Tillämpad Programmering - SQL Queries

## Uppgifter SQL

### Förkunskaper

- [Gör övningar på w3schools](https://www.w3schools.com/sql/exercise.asp)
- [SQL Tutorial - w3schools](https://www.w3schools.com/sql/)
- Intro Syntax: Select, Where, Order by, Functions, Like, Wildcards, In, Between, Alias, Join, Group by
- Avancerat Syntax: Subqueries, Having, Union, CTE (Common Table Expression)

### Tabeller som du behöver använda för uppgift 1-15

#### Countries - Info om länder

#### City - Info om städer

#### Encompasses - Info om vilka länder som ligger i vilka kontinenter

#### River - Info om floder

#### isMember - Info om vilka länder som är med i vilka organisationer

### Uppgift 1

Hämta namnen på alla länder i databasen

#### Exempel korrekt utskrift

| Name    |
| ------- |
| Sweden  |
| Norway  |
| Denmark |
| ...     |

### Uppgift 2

Hämta namnet på huvudstaden i Zimbabwe

#### Exempel korrekt utskrift

| Name   |
| ------ |
| Harare |

### Uppgift 3

Hämta namnen på alla länder som börjar på bokstaven "S".

#### Exempel korrekt utskrift

| Name        |
| ----------- |
| Sweden      |
| Spain       |
| Switzerland |
| Singapore   |
| South Korea |
| ...         |

### Uppgift 4

Hämta namnen på alla länder som har en befolkning på över 100 miljoner människor

| Name          |
| ------------- |
| China         |
| India         |
| United States |
| Indonesia     |
| ...           |

### Uppgift 5

Hämta namnen på alla städer i databasen i bokstavsordning.

#### Exempel korrekt utskrift

| Name      |
| --------- |
| Barcelona |
| Berlin    |
| London    |
| Madrid    |
| Paris     |
| Stockholm |
| ...       |

### Uppgift 6

Hämta namnen på alla städer i Sverige

#### Exempel korrekt utskrift

| Name       |
| ---------- |
| Stockholm  |
| Gothenburg |
| Malmö      |
| Uppsala    |
| ...        |

### Uppgift 7

Hämta namn och population på alla länder som har större population än Sverige

#### Exempel korrekt utskrift

| Name          | Population |
| ------------- | ---------- |
| China         | 1400000000 |
| India         | 1350000000 |
| United States | 330000000  |
| ...           | ...        |

### Uppgift 8

Hämta information om alla städer som har en befolkning på mellan 1 miljon och 5 miljoner människor.

#### Exempel korrekt utskrift

| Name      | Population |
| --------- | ---------- |
| Barcelona | 1600000    |
| Berlin    | 3700000    |
| Madrid    | 3200000    |
| ...       | ...        |

### Uppgift 9

Hämta namnen på alla länder i Europa och Asien.

#### Exempel korrekt utskrift

| Name    |
| ------- |
| France  |
| Germany |
| China   |
| India   |
| ...     |

### Uppgift 10

Lista de tio största länderna i världen baserat på deras totala yta/area

#### Exempel korrekt utskrift

| Name          | Area     |
| ------------- | -------- |
| Russia        | 17098242 |
| Canada        | 9984670  |
| United States | 9826675  |
| ...           | ...      |

### Uppgift 11

Hämta namnen på alla städer som har en befolkning på över 1 miljon människor och som är belägna i Europa

#### Exempel korrekt utskrift

| Name   | Population |
| ------ | ---------- |
| Berlin | 3700000    |
| Madrid | 3200000    |
| ...    | ...        |

### Uppgift 12

Hämta en lista över alla huvudstäder i Europa med information om stadens namn, land och befolkning, sorterad i stigande ordning efter befolkning.

#### Exempel korrekt utskrift

| CityName | CountryName | Population |
| -------- | ----------- | ---------- |
| Rome     | Italy       | 2873000    |
| Berlin   | Germany     | 3700000    |
| ...      | ...         | ...        |

### Uppgift 13

Hämta medellängden på alla floder som är längre än 1000 kilometer, och ge resultatet ett alias som "medellängd".

#### Exempel korrekt utskrift

| medellängd |
| ---------- |
| 1480       |
| 1650       |
| ...        |

### Uppgift 14

Hämta en lista på alla länder som är medlemmar av NATO

#### Exempel korrekt utskrift

| Name           |
| -------------- |
| United States  |
| United Kingdom |
| ...            |

### Uppgift 15

Hämta namnen på alla europeiska länder med en befolkning på över 50 miljoner människor.
Sortera listan i alfabetisk ordning efter landets namn och visa antalet städer i varje land.

#### Exempel korrekt utskrift

| Name    | City_Count |
| ------- | ---------- |
| France  | 1          |
| Germany | 1          |
| ...     | ...        |

### Uppgift 16

Ta fram en tabell med som räknar hur många länder i varje kontinent som har fler än 10 provinser och en huvudstad med mer än 5 miljoner invånare.

#### Använd tabellen Province för info om provinser

#### Exempel korrekt utskrift

| Continent         | count |
| ----------------- | ----- |
| Africa            | 2     |
| America           | 3     |
| Asia              | 7     |
| Australia/Oceania | 1     |
| Europe            | 2     |

### Uppgift 17

Räkna ut ration mellan antal städer som är landlockade och har över 3 miljoner invånare och alla städer som har över 3 miljoner invånare.
En landlockad stad är en stad som varken har floder (river), sjöar(lakes) eller hav(seas) nära sig.

#### Använd tabellen Located för info om städers närhet till floder, sjöar och hav

#### Exempel korrekt utskrift

| ratio  |
| ------ |
| 0.0294 |

### Uppgift 18

Ta fram antal länder som har ett visst antal berg där antalet berg är över snittet för berg per land.

#### Använd tabellen geo_Mountain för geografisk info om berg

#### Exempel korrekt utskrift

| num_countries | num_mountains |
| ------------- | ------------- |
| 5             | 5             |
| 5             | 8             |
| ...           | ...           |

### Uppgift 19

Ta fram en lista på de länder som har ett antal boarders som är det minsta antal boarders som länder har (du måste använda MIN).

#### Använd tabellen borders för info om angränsande länder

#### Exempel korrekt utskrift

| country | borders |
| ------- | ------- |
| Brunei  | 1       |
| Canada  | 1       |
| Ceuta   | 1       |
| Denmark | 1       |
| ...     | ...     |

### Uppgift 20

Ta fram en lista på alla länder som inte har några öar.

#### Använd tabellen geo_Island för geografisk info om öar

#### Exempel korrekt utskrift

| Name        |
| ----------- |
| Afghanistan |
| Armenia     |
| Azerbaijan  |
| Bahrain     |
| Belarus     |
| ...         |

### Uppgift 21

Ta fram förhållandet mellan inlandsprovinser (provinser som inte gränsar till något hav) och det totala antalet provinser.

#### Använd tabellen geo_Sea för geografisk info om hav

#### Exempel korrekt utskrift

| Ratio              |
| ------------------ |
| 0.5498154981549815 |

### Uppgift 22

Ta fram en tabell med alla kontinenter och summan av areorna för alla kontinentens sjöar(lake) som har ett djup på minst 50 m.
Tänk på att sjöarna finns flera gånger i tabellen geo_Lake, detta måste du ta hänsyn till. Du måste inte ta hänsyn till att en sjö "har" flera länder, utan anta att alla länder som sjön ligger vid ligger i samma kontinent.
Om en sjö ligger i ett land som är beläget på flera kontinenter ska den lämpliga andelen av sjöns area räknas för varje kontinent.

#### Använd tabellen geo_Lake för geografisk info om sjöar

#### Använd tabellen Lake för info om sjöar

#### Exempel korrekt utskrift

| Continent         | Total_deep_lake_area |
| ----------------- | -------------------- |
| Africa            | 161412.0 km2         |
| America           | 344183.0 km2         |
| Asia              | 1146755.0 km2        |
| Australia/Oceania | 1203.0 km2           |
| Europe            | 151792.0 km2         |

### Uppgift 23

Ta fram en tabell med de två kontinenterna som har den största och minsta populationstillväxt om 1 år givet nuvarande population och populationstillväxt. Ta även fram en ration mellan den beräknade populationen om 1 år samt nuvarande population.

#### Använd tabellen population för populations-ökning. I beskrivningen för databasen står det att ökningen är för ett år, men siffrorna verkar lite för höga för det. Bortse från detta faktum.

#### Exempel korrekt utskrift

| Continent         | Pop_Increase | Ratio |
| ----------------- | ------------ | ----- |
| Africa            | 3676484132   | 3.3   |
| America           | 1832119758   | 1.92  |
| Asia              | 8492108468   | 1.9   |
| Australia/Oceania | 574692310    | 1.98  |
| Europe            | 1017570086   | 1.22  |

### Uppgift 24

Ta fram namnet på den organisation som har huvudkvarter i Europa, har "International" i namnet och har flest antal europeiska medlemsländer.

####

#### Exempel korrekt utskrift

| Name                                       |
| ------------------------------------------ |
| International Criminal Police Organization |

### Uppgift 25

Ta fram en tabell med namn på städer och relaterade flygplatser för alal städer som har minst 100 000 invånare, finns i Amerika och flygplatsen har en höjd på minst 500 meter.

#### Exempel korrekt utskrift

| City                | Airport                              |
| ------------------- | ------------------------------------ |
| Denver, CO          | Denver International Airport         |
| Mexico City, Mexico | Mexico City International Airport    |
| Quito, Ecuador      | Mariscal Sucre International Airport |
| La Paz, Bolivia     | El Alto International Airport        |
| ...                 | ...                                  |

### Uppgift 26

Ta fram en tabell över länder med deras ratio mellan deras senaste rapporterade population och deras tidigaste rapporterade population. Runda av till en decimal. Ta endast med länder där denna ratio är minst 10, dvs populationen har ökat med minst 10 gånger.

#### Exempel korrekt utskrift

| Country       | Population Ratio |
| ------------- | ---------------- |
| China         | 14               |
| India         | 16               |
| United States | 22               |
| Indonesia     | 33               |
| Brazil        | 44               |
| Pakistan      | 31               |
| Nigeria       | 39               |
| ...           | ...              |

### Uppgift 27

Väldigt svår, över A-nivå

Generera en tabell med de tre (3) städer med över 5 000 000 invånare som bildar den största triangeln mellan dem, mätt som den totala längden av alla tre triangelns sidor, samt den totala längden.
Du får behandla världen som en Mercatorprojektion för att beräkna avstånd, det vill säga använda avståndsformler för ett plan, men du måste ta hänsyn till att norr/söder-kanterna och öst/väst-kanterna möts och hantera det.
En lösning som räknar två städer precis vid datumlinjen som världar som är långt ifrån varandra, till exempel, är felaktig och kommer inte att godtas.

Tips 1: Filtrera ut städerna som matchar villkoret först!
Tips 2: Lös det enklare problemet med att beräkna de två städer som är längst ifrån varandra under de givna förhållandena först

#### Exempel korrekt utskrift

| Stad 1    | Stad 2 | Stad 3 | Totaldistans |
| --------- | ------ | ------ | ------------ |
| Stockholm | Tokyo  | Madrid | 1234567      |

### Uppgift 28

Väldigt svår, över A-nivå

Generera en tabell som innehåller floderna Rhen, Nilen och Amazonas, och den längsta totala längd som flodsystemen som matar in i var och en av dem innehåller (inklusive deras egna respektive längd). Du måste beräkna de respektive flodsystemen med biflodfloder rekursivt.

#### Exempel korrekt utskrift

| River    | Total Length (km) |
| -------- | ----------------- |
| Rhein    | 1,233             |
| Nile     | 6,695             |
| Amazonas | 6,992             |
