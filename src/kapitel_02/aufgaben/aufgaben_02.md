# Übungsaufgaben zum Kapitel 02: Variablen, Objekte, Operatoren

*(Gesamtzeit: ca. 100-130 Min)*

#### Aufgaben zu Kapitel 02

- [ ] Aufgabe 02-01
- [ ] Aufgabe 02-02
- [ ] Aufgabe 02-03

---

## Aufgabe 2.1: Zeit-Umrechner

*(ca. 25 Min)*

Nutze die Datei `src/kapitel_02/aufgabe_02-01.py` für Deine Lösung.

**Aufgabenstellung:**

Schreibe ein Programm, das eine Zeitangabe in Minuten entgegennimmt und diese in Stunden und verbleibende Minuten umrechnet.

**Lernziele:**

- Den Operator für die Ganzzahl-Division (`//`) verstehen und anwenden, um ein ganzzahliges Ergebnis zu erhalten.
- Den Modulo-Operator (`%`) verstehen und anwenden, um den Rest einer Division zu ermitteln.
- Eingaben korrekt in den `int`-Datentyp umwandeln, um damit rechnen zu können.

**Erwartetes Ergebnis:**

- bei Eingabe von `5987`

```text
Bitte gib die Anzahl der Minuten ein: 5987
5987 Minuten entsprechen 99 Stunde(n) und 47 Minute(n).
```

## Aufgabe 2.2: WG-Einkaufsrechner

*(ca. 25 Min)*

Nutze die Datei `src/kapitel_02/aufgabe_02-02.py` für Deine Lösung.

**Aufgabenstellung:**

Der Betrag eines WG-Einkaufs soll fair aufgeteilt werden. Dein Programm fragt nach der Rechnungssumme und der Anzahl der Personen. Es berechnet, wie viel jede Person mindestens zahlen muss und wie hoch der Restbetrag in Cent ist.

**Lernziele:**

- Das Zusammenspiel von `float` (für Geldbeträge) und `int` (für Personenanzahl und Cent-Beträge) meistern.
- Eine Berechnung durchführen, die eine Umwandlung (Euro in Cent) erfordert, um Rundungsfehler zu vermeiden.
- Die Operatoren `//` und `%` auf ein praktisches Finanzproblem anwenden.

**Erwartetes Ergebnis:**

- bei Eingabe von `420.44` und `5`

```text
Wie hoch war die Rechnungssumme (in Euro)? 420.44
Wie viele Personen teilen sich die Kosten? 5

--- KOSTENAUFTEILUNG ---
Bei 5 Personen und einer Rechnungssumme von 420.44 Euro: 
Jede Person zahlt mindestens 84.08 Euro.
Es verbleibt ein Rest von 4 Cent.
```

## Aufgabe 2.3: Zinseszins-Rechner

*(Integrationsaufgabe, ca. 30 Min)*

Nutze die Datei `src/kapitel_02/aufgabe_02-03.py` für Deine Lösung.

**Aufgabenstellung:**

Der Zinseszinseffekt ist ein mächtiges Werkzeug beim Sparen. Erstelle einen Rechner dafür. Die Formel für das Endkapital lautet:

$K_n = K_0 \cdot \left(1 + \frac{p}{100}\right)^n$

$K_n$: Endkapital nach n Jahren
$K_0$: Anfangskapital
$p$: Zinssatz in Prozent
$n$: Laufzeit in Jahren

Dein Programm soll nach dem Anfangskapital, dem Zinssatz und der Laufzeit fragen und das Endkapital berechnen.

**Lernziele:**

- Den Potenz-Operator (`**`) für die Laufzeit korrekt anwenden.
- Die korrekte Klammerung und Reihenfolge von Operationen (`/`, `+`, `**)` in einer mathematischen Formel sicherstellen.
- Verschiedene Datentypen (`float` für Kapital/Zins, `int` für Jahre) korrekt einlesen und verarbeiten.
- Einen `f-String` zur formatierten Ausgabe eines Geldbetrags nutzen (`:.2f`).

**Erwartetes Ergebnis:**

- bei Eingabe von `100.00`, `5`, und `10`

```text
Bitte gib das Anfangskapital in Euro ein: 
Bitte gib den Zinssatz in Prozent an: 
Bitte gib die Laufzeit in Jahren ein: 

--- ZINSRECHNER ---
Anfangskapital: 100.00 Euro
Zinssatz: 5.00%
Laufzeit: 10 Jahre 

Nach 10 Jahren beträgt das Endkapital: 162.89 Euro.
```
