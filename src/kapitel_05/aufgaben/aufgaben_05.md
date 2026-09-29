# Übungsaufgaben zum Kapitel 05: Datenstrukturen und Listenverarbeitung
*(Gesamtzeit: ca. 90-120 Min)*

In diesem Kapitel wenden wir Listen, Tupel und List Comprehensions an, um Datensammlungen zu verwalten, zu analysieren und zu transformieren.

#### Aufgaben zu Kapitel 05
- [ ] Aufgabe 05-01
- [ ] Aufgabe 05-02
- [ ] Aufgabe 05-03
- [ ] Aufgabe 05-04
- [ ] Aufgabe 05-05
---

## Aufgabe 5.1: Notenliste verwalten
*(ca. 15 Min)*

**Aufgabenstellung:**
Eine Liste mit Prüfungsergebnissen (in Prozent) liegt vor. Das schlechteste Ergebnis soll gestrichen und ein neues Ergebnis hinzugefügt werden. Gib die ursprüngliche, die bearbeitete Liste und den neuen Notendurchschnitt aus.

**Vorgegebene Liste:** `noten = [88, 92, 77, 95, 81]`

**Schritte:**
1. Sortiere die Liste, um das schlechteste Ergebnis leicht zu finden.
2. Entferne das schlechteste Ergebnis (das erste Element nach dem Sortieren).
3. Füge das neue Ergebnis `94` hinzu.
4. Berechne den Durchschnitt der finalen Notenliste.

**Lernziele:**
- Eine Liste mit `.sort()` an Ort und Stelle modifizieren.
- Elemente mit `del` anhand ihres Index entfernen.
- Neue Elemente mit `.append()` an eine Liste anhängen.
- Die eingebauten Funktionen `sum()` und `len()` zur Berechnung eines Durchschnitts nutzen.

**Erwartetes Ergebnis:**
```text
Ursprüngliche Noten: [88, 92, 77, 95, 81]
Schlechtestes Ergebnis (77) entfernt.
Note 94 hinzugefügt.
Finale Notenliste: [81, 88, 92, 94, 95]
Neuer Durchschnitt: 90.0
```

## Aufgabe 5.2: Verkaufszahlen analysieren
*(ca. 20 Min)*

**Aufgabenstellung:**
Die monatlichen Verkaufszahlen (in Tausend Euro) eines Jahres sind in einer Liste gespeichert. Analysiere diese Daten, um die drei umsatzstärksten Monate und den Gesamtumsatz des besten Quartals zu ermitteln.

**Vorgegebene Liste:** `verkaufszahlen = [12, 15, 13, 18, 19, 22, 21, 20, 23, 25, 24, 27]`

**Schritte:**
1. Finde die drei höchsten Verkaufszahlen. (Tipp: `sorted()` ist hier nützlich).
2. Identifiziere das Quartal mit dem höchsten Umsatz. Ein Jahr hat vier Quartale mit je drei Monaten.
3. Berechne die Summe der Verkaufszahlen für dieses Quartal.

**Lernziele:**
- Eine sortierte Kopie einer Liste mit `sorted()` erstellen, ohne das Original zu verändern.
- Slicing verwenden, um Teillisten (Quartale) zu extrahieren.
- Listen und Schleifen kombinieren, um eine einfache Datenanalyse durchzuführen.

**Erwartetes Ergebnis:**
```text
Die drei umsatzstärksten Monate hatten Verkäufe von: [27, 25, 24]
Das beste Quartal war das 4. Quartal.
Gesamtumsatz im besten Quartal: 76 Tausend Euro.
```

## Aufgabe 5.3: Lagerbestands-Filter
*(ca. 20 Min)*

**Aufgabenstellung:**
Der Lagerbestand eines kleinen Shops ist als Liste von Tupeln gespeichert. Jedes Tupel enthält den Produktnamen und die aktuelle Stückzahl. Schreibe ein Programm, das alle Produkte ausgibt, deren Lagerbestand unter einen kritischen Wert von 10 Stück gefallen ist.

**Vorgegebene Liste:** `lagerbestand = [("Laptop", 15), ("Maus", 35), ("Tastatur", 8), ("Bildschirm", 5)]`

**Lernziele:**
- Durch eine Liste von Tupeln iterieren.
- Auf einzelne Elemente innerhalb eines Tupels über ihren Index zugreifen.
- Eine `if`-Bedingung nutzen, um die Daten nach einem Kriterium zu filtern.
- Die Unveränderlichkeit von Tupeln in einem praxisnahen Kontext verstehen.

**Erwartetes Ergebnis:**
```text
Kritischer Lagerbestand (unter 10 Stück):
- Tastatur: 8 Stück
- Bildschirm: 5 Stück
```

## Aufgabe 5.4: Umrechnung in Brutto-Preise
*(ca. 15 Min)*

**Aufgabenstellung:**
Eine Liste von Netto-Preisen soll in eine neue Liste von Brutto-Preisen umgerechnet werden. Der Mehrwertsteuersatz beträgt 19%. Nutze für die Umrechnung eine List Comprehension.

**Vorgegebene Liste:** `netto_preise = [99.99, 14.50, 42.00, 120.55]`

**Lernziele:**
- Eine List Comprehension anwenden, um eine neue Liste aus einer bestehenden zu erzeugen.
- Arithmetische Operationen innerhalb einer List Comprehension durchführen.
- Den Code lesbar und "pythonic" gestalten.

**Erwartetes Ergebnis:**
```text
Netto-Preise: [99.99, 14.5, 42.0, 120.55]
Brutto-Preise (inkl. 19% MwSt.): [118.99, 17.25, 49.98, 143.45]
```

## Aufgabe 5.5: E-Mail-Adressen validieren
*(Integrationsaufgabe, ca. 30 Min)*

**Aufgabenstellung:**
Gegeben ist eine Liste mit potenziellen E-Mail-Adressen. Schreibe ein Programm, das diese Liste filtert und eine neue Liste erstellt, die nur die gültigen Adressen enthält.

**Vereinfachte Gültigkeitsregeln:**
1. Die Adresse muss genau ein `@`-Symbol enthalten.
2. Nach dem `@`-Symbol muss mindestens ein `.` vorkommen.

**Vorgegebene Liste:** `adressen = ["test@example.com", "user.name@domain.co", "user@localhost", "no-at-sign.com", "user@.com", "@domain.com"]`

**Lernziele:**
- Alle bisher gelernten Konzepte in einer Aufgabe kombinieren.
- Eine List Comprehension mit einer `if`-Bedingung und String-Methoden (`.count()`, `.find()`) zur Filterung verwenden.
- Logische Bedingungen (`and`) innerhalb der Comprehension verknüpfen.

**Erwartetes Ergebnis:**
```text
Ursprüngliche Liste: ['test@example.com', 'user.name@domain.co', 'user@localhost', 'no-at-sign.com', 'user@.com', '@domain.com']
Gültige E-Mail-Adressen: ['test@example.com', 'user@.com', '@domain.com']
```

### Exkurs: E-Mail-Validierung in der Praxis

Die in dieser Aufgabe verwendeten Regeln sind eine starke Vereinfachung, um das Prinzip der Filterung mit List Comprehensions zu üben.

In der realen Welt ist die Validierung von E-Mail-Adressen extrem komplex. Der offizielle Standard ([RFC 5322](https://datatracker.ietf.org/doc/html/rfc5322)) erlaubt eine Vielzahl von Sonderzeichen und Formaten, die unser einfacher Filter fälschlicherweise ablehnen würde (z.B. `user+alias@example.com`).

Das professionelle Werkzeug zur Überprüfung solcher Muster sind **Reguläre Ausdrücke (Regular Expressions)**. In Python werden diese über das [`re`-Modul]([https://docs.python.org/3/library/re.html](https://docs.python.org/3/library/re.html)) bereitgestellt. Einen perfekten regulären Ausdruck für E-Mails zu schreiben, ist selbst für Experten eine Herausforderung!
