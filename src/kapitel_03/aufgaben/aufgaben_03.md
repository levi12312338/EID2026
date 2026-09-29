

# Übungsaufgaben zum Kapitel 03: Kontrollfluss: Logik und Verzweigungen
*(Gesamtzeit: ca. 115-150 Min)*

---
#### Aufgaben zu Kapitel 03
- [ ] Aufgabe 03-01
- [ ] Aufgabe 03-02
- [ ] Aufgabe 03-03
- [ ] Aufgabe 03-04
---

## Aufgabe 3.1: Notenspiegel
*(ca. 20 Min)*

**Nutze die Datei `src/kapitel_03/aufgabe_03-01.py` für Deine Lösung.**

**Aufgabenstellung:**

Ein Prüfungsergebnis (0-100 Punkte) soll in eine Note umgewandelt werden (90+ = "Sehr Gut", 80-89 = "Gut" etc.).

- 90-100: "Sehr Gut"
- 80-89: "Gut"
- 65-79: "Befriedigend"
- 50-64: "Ausreichend"
- 0-49: "Nicht bestanden"

Schreibe ein Programm, das die Punktzahl einliest und die korrekte Note ausgibt.

**Lernziele:**

- Eine `if-elif-else`-Kette zur Abbildung von aufeinanderfolgenden Wertebereichen aufbauen.
- Vergleichsoperatoren (`>=`) logisch korrekt anordnen und die Wichtigkeit der Reihenfolge in der Kette verstehen.
- Den Kontrollfluss so steuern, dass immer nur genau ein Ergebnis ausgegeben wird.

**Erwartetes Ergebnis:**

- bei Eingabe von `89`

```text
Bitte gib deine erreichte Punktzahl ein: 89
Deine Note: Gut (89 Punkte)
```

## Aufgabe 3.2: Wochenend-Prüfer
*(ca. 10 Min)*

**Nutze die Datei `src/kapitel_03/aufgabe_03-02.py` für Deine Lösung.**

**Aufgabenstellung:**

Schreibe ein Programm, das den Benutzer nach einem Wochentag fragt. Wenn der Tag "Samstag" ODER "Sonntag" ist, soll es "Schönes Wochenende!" ausgeben. Ansonsten soll es "Eine produktive Woche!" wünschen.

**Lernziele:**

- Den logischen Operator `or` verwenden, um zu prüfen, ob eine von mehreren Bedingungen zutrifft.
- Textuelle Eingaben (`str`) exakt vergleichen und dabei die Groß- und Kleinschreibung beachten.

**Erwartetes Ergebnis:**

- bei Eingabe von `Montag` (analog bei `Dientag` bis `Freitag`)

```text
Welcher Wochentag ist heute? Montag
Eine produktive Woche!
```

- bei Eingabe von `Samstag` (analog bei `Sonntag`)

```text
Welcher Wochentag ist heute? Samstag
Schönes Wochenende!
```



## Aufgabe 3.3: Versandkosten-Rechner
*(ca. 25 Min)*

**Nutze die Datei `src/kapitel_03/aufgabe_03-03.py` für Deine Lösung.**

**Aufgabenstellung:**

Implementiere die Logik für einen Online-Shop: Bestellungen über `50€` sind versandkostenfrei. Darunter wird geprüft, ob der Kunde Premium-Mitglied ist. Nur wenn beides nicht zutrifft, fallen `4.99€` Versandkosten an. Gib am Ende den Gesamtbetrag aus.

**Lernziele:**

- Eine verschachtelte if-else-Struktur aufbauen, bei der eine zweite Prüfung von der ersten abhängt.
- Den Programmfluss durch mehrere logische Ebenen nachvollziehen und implementieren.
- Boolesche Logik (in diesem Fall die Abfrage "ja/nein") zur Steuerung des Programmablaufs nutzen.

**Erwartetes Ergebnis:**

- bei Eingabe von `42.42` und `nein`

```text
Bitte geben Sie den Bestellwert ein: 42.42
Sind Sie Premium-Mitglied (ja/nein)? nein

--- VERSANDKOSTEN-RECHNER ---
Bestellwert:     42.42 Euro
Versandkosten:    4.99 Euro
--------------------------
Gesamtbetrag:    47.41 Euro
```

- bei Eingabe von `42.42` und `ja`

```text
Bitte geben Sie den Bestellwert ein: 42.42
Sind Sie Premium-Mitglied (ja/nein)? ja

--- VERSANDKOSTEN-RECHNER ---
Bestellwert:     42.42 Euro
Versandkosten:    0.00 Euro
--------------------------
Gesamtbetrag:    42.42 Euro
```

- bei Eingabe von `50` und `nein`

```text
Bitte geben Sie den Bestellwert ein: 50

--- VERSANDKOSTEN-RECHNER ---
Bestellwert:     50.00 Euro
Versandkosten:    0.00 Euro
--------------------------
Gesamtbetrag:    50.00 Euro
```

## Aufgabe 3.4: Interaktiver Taschenrechner
*(Integrationsaufgabe, ca. 30 Min)*

**Nutze die Datei `src/kapitel_03/aufgabe_03-04.py` für Deine Lösung.**

**Aufgabenstellung:**

Erstelle einen einfachen Taschenrechner. Das Programm soll zwei Zahlen und eine Rechenoperation (`+`, `-`, `*`, `/`) einlesen. Anschließend soll es die korrekte Berechnung durchführen und das Ergebnis ausgeben. Eine Division durch `0` soll mit einer Fehlermeldung abgefangen werden.

**Lernziele:**

- Eine umfassende `if-elif-else`-Kette verwenden, um zwischen mehreren klar definierten Fällen (den Operatoren) zu unterscheiden.
- Eine `if`-Anweisung innerhalb eines `elif`-Blocks zur Fehlerbehandlung (Division durch Null) einsetzen.
- Alle bisher gelernten Konzepte (Eingabe, Typkonvertierung, Operatoren, Verzweigungen) in einem interaktiven Werkzeug bündeln.

**Erwartetes Ergebnis:**

Beispiele:

```text
Gib die erste Zahl ein: 7
Gib die zweite Zahl ein: 6
Gib die Operation ein (+, -, *, /): *

Das Ergebnis von 7.0 * 6.0 ist: 42.0
```

```text
Gib die erste Zahl ein: 420
Gib die zweite Zahl ein: 10
Gib die Operation ein (+, -, *, /): /

Das Ergebnis von 420.0 / 10.0 ist: 42.0
```

```text
Gib die erste Zahl ein: 31
Gib die zweite Zahl ein: 73
Gib die Operation ein (+, -, *, /): -

Das Ergebnis von 31.0 - 73.0 ist: -42.0
```

```text
Gib die erste Zahl ein: 42
Gib die zweite Zahl ein: 0
Gib die Operation ein (+, -, *, /): /

Fehler: Division durch 0 ist nicht definiert!
```