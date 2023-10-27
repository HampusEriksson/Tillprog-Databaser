# Tillämpad Programmering - SQL Queries

## Uppgifter SQL

### Förkunskaper

- [Gör övningar på w3schools](https://www.w3schools.com/sql/exercise.asp)
- [SQL Tutorial - w3schools](https://www.w3schools.com/sql/)
- Intro Syntax: Select, Where, Order by, Functions, Like, Wildcards, In, Between, Alias, Join, Group by
- Avancerat Syntax: Subqueries, Having, Union, CTE (Common Table Expression)

### Uppgift 1

Ta fram en tabell med som räknar hur många länder i varje kontinent som har fler än 10 provinser och en huvudstad med mer än 5 miljoner invånare.

#### Exempel korrekt utskrift

| Continent         | count |
| ----------------- | ----- |
| Africa            | 2     |
| America           | 3     |
| Asia              | 7     |
| Australia/Oceania | 1     |
| Europe            | 2     |

### Uppgift 2

Räkna ut ration mellan antal städer som är landlockade och har över 3 miljoner invånare och alla städer som har över 3 miljoner invånare.
En landlockat stad är en stad som varken har floder (river), sjöar(lakes) eller hav(seas) nära sig.
Tips: Använd tabellen located

#### Exempel korrekt utskrift

| ratio  |
| ------ |
| 0.0294 |

### Uppgift 3

Ta fram antal länder som har ett visst antal berg där antalet berg är över snittet för berg per land.

#### Exempel korrekt utskrift

| num_countries | num_mountains |
| ------------- | ------------- |
| 5             | 5             |
| 5             | 8             |

### Uppgift 4

Ta fram en lista på de länder som har ett antal boarders som är det minsta antal boarders som länder har (du måste använda MIN).

#### Exempel korrekt utskrift

| country | boarders |
| ------- | -------- |
| Brunei  | 1        |
| Canada  | 1        |
| Ceuta   | 1        |
| Denmark | 1        |

### Uppgift 5

Ta fram en lista på alla länder som inte har några öar.
Tips: Använd tabellen geo_Island

#### Exempel korrekt utskrift

| Country     |
| ----------- |
| Afghanistan |
| Armenia     |
| Azerbaijan  |
| Bahrain     |
| Belarus     |

### Uppgift 6

Ta fram förhållandet mellan inlandsprovinser (provinser som inte gränsar till något hav) och det totala antalet provinser.

#### Exempel korrekt utskrift

| Ratio |
| ----- |
| 7.65  |

### Uppgift 7

Ta fram en tabell med alla kontinenter och summan av areorna för alla sjöar som innehåller minst en ö för varje kontinent. Om en sjö ligger i ett land som är beläget på flera kontinenter ska den lämpliga andelen av sjöns area räknas för varje kontinent.

#### Exempel korrekt utskrift

| Continent     | Sum of lake areas with islands |
| ------------- | ------------------------------ |
| Africa        | 97,100 km²                     |
| Asia          | 2,583 km²                      |
| Europe        | 14,478 km²                     |
| North America | 18,580 km²                     |
| South America | 9,832 km²                      |
| Oceania       | 49,360 km²                     |

### Uppgift 8

Ta fram en tabell med de två kontinenterna som har den största och minsta populationstillväxt om 50 år givet nuvarande population och populationstillväxt. Ta även fram en ration mellan den beräknade populationen om 50 år samt nuvarande population.

#### Exempel korrekt utskrift

| Continent | Pop_Increase | Ratio |
| --------- | ------------ | ----- |
| Afrika    | 955 miljoner | 2,1   |
| Europa    | 28 miljoner  | 1,1   |

### Uppgift 9

Ta fram namnet på den organisation som har huvudkvarter i Europa, har "International" i namnet och har flest antal europeiska medlemsländer.

#### Exempel korrekt utskrift

| Name |
| ---- |
| FBI  |

### Uppgift 10

Ta fram en tabell med namn på städer och relaterade flygplatser för alal städer som har minst 100 000 invånare, finns i Amerika och flygplatsen har en höjd på minst 500 meter.

#### Exempel korrekt utskrift

| City                | Airport                              |
| ------------------- | ------------------------------------ |
| Denver, CO          | Denver International Airport         |
| Mexico City, Mexico | Mexico City International Airport    |
| Quito, Ecuador      | Mariscal Sucre International Airport |
| La Paz, Bolivia     | El Alto International Airport        |

### Uppgift 11

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

### Uppgift 12

Big hard - Håller den på engelska

Generate a table with the three (3) cities above 5,000,000 inhabitants that form the largest
triangle between them, measured as the total length of all three triangle legs, and that total
length.
You are allowed to treat the world as a Mercator projection for purposes of calculating
distances, that is, to use the distance formulas for a plane, but you must consider that the
north/south edges and the east/west edges, respectively, meet and handle that. Any solution
that counts two cities just on each side of the date line as a world apart, for instance, is wrong
and will not be admitted. Your solution is allowed to contain duplicate rows of the same
cities.
Hint 1: Filter out the cities matching the condition first!
Hint 2: Solve the simpler problem of calculating the two cities furthest apart under the above conditions first

#### Exempel korrekt utskrift

| Stad 1    | Stad 2 | Stad 3 | Totaldistans |
| --------- | ------ | ------ | ------------ |
| Stockholm | Tokyo  | Madrid | 1234567      |

### Uppgift 13

Big hard - Håller den på engelska

Generate a table that contains the rivers Rhein, Nile and Amazonas, and the longest total
length that the river systems feeding into each of them contain (including their own
respective length). You must calculate the respective river systems of tributary rivers
recursively

#### Exempel korrekt utskrift

| River    | Total Length (km) |
| -------- | ----------------- |
| Rhein    | 1,233             |
| Nile     | 6,695             |
| Amazonas | 6,992             |
