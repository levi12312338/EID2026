# Übungsaufgaben zum Kapitel 07: Eigene Funktionen, Type Hints & Funktionale Programmierung
*(Gesamtzeit: ca. 115-145 Min)*

In diesem Kapitel strukturieren wir unseren Code mit eigenen Funktionen, machen ihn durch Type Hints robuster und lesbarer und nutzen funktionale Konzepte zur eleganten Datenverarbeitung.

---
#### Aufgaben zu Kapitel 07
- [ ] Aufgabe 07-01
- [ ] Aufgabe 07-02
- [ ] Aufgabe 07-03
- [ ] Aufgabe 07-04
- [ ] Aufgabe 07-05
---

## Aufgabe 7.1: Taschenrechner als Funktion
*(ca. 20 Min)*

**Aufgabenstellung:**
Wandle den interaktiven Taschenrechner aus Kapitel 3 so um, dass die eigentliche Rechenlogik in eine separate Funktion `berechne()` ausgelagert wird. Diese Funktion soll zwei Zahlen und den Operator als Zeichenkette entgegennehmen und das Ergebnis zurückgeben. Behandle auch die Division durch Null.

**Funktionssignatur:** `berechne(zahl1: float, zahl2: float, operator: str) -> float | str`

**Lernziele:**
- Bestehenden Code in eine wiederverwendbare Funktion auslagern.
- Parameter zur Übergabe von Werten und `return` zur Rückgabe eines Ergebnisses nutzen.
- Den Unterschied zwischen `print()` (Ausgabe) und `return` (Rückgabe) verstehen.
- Type Hints für Parameter und den Rückgabewert anwenden.

**Erwartetes Ergebnis (im Hauptprogramm):**
```text
# Bei Aufruf von berechne(7.0, 6.0, "*")
Ergebnis: 42.0

# Bei Aufruf von berechne(31.0, 73.0, "-")
Ergebnis: -42.0

# Bei Aufruf von berechne(42.0, 0.0, "/")
Fehler: Division durch 0 ist nicht definiert!
```

## Aufgabe 7.2: Flexible Grußformeln
*(ca. 20 Min)*

**Aufgabenstellung:**
Erstelle eine Funktion `erstelle_gruss()`, die eine personalisierte Grußformel generiert. Die Funktion soll einen Namen entgegennehmen und optional eine Anrede und einen Titel. Wenn keine Anrede übergeben wird, soll ein Standardwert verwendet werden.

**Funktionssignatur:** `erstelle_gruss(name: str, anrede: str = "Sehr geehrte/r", titel: str = "") -> str`

**Lernziele:**
- Eine Funktion mit optionalen Parametern durch Standardwerte (Default-Werte) definieren.
- Logik innerhalb einer Funktion verwenden, um den Rückgabewert basierend auf den Parametern anzupassen (z.B. den Titel nur einfügen, wenn er vorhanden ist).
- Flexible und mehrfach nutzbare Funktionen erstellen.

**Erwartetes Ergebnis:**
```text
# Bei Aufruf von erstelle_gruss("Max Mustermann")
Sehr geehrte/r Max Mustermann,

# Bei Aufruf von erstelle_gruss("Ada Lovelace", anrede="Hallo Frau", titel="Prof. Dr.")
Hallo Frau Prof. Dr. Ada Lovelace,

# Bei Aufruf von erstelle_gruss("Peer Tester", anrede="Guten Tag Herr")
Guten Tag Herr Peer Tester,
```

## Aufgabe 7.3: Notenstatistik
*(ca. 25 Min)*

**Aufgabenstellung:**
Schreibe eine Funktion `noten_statistik()`, die eine variable Anzahl von Noten (als `float`) entgegennimmt und ein Dictionary mit der besten Note, der schlechtesten Note und dem Durchschnitt zurückgibt. Die Funktion soll auch mit dem Fall umgehen können, dass keine Noten übergeben werden.

**Funktionssignatur:** `noten_statistik(*noten: float) -> dict`

**Lernziele:**
- Eine Funktion definieren, die eine variable Anzahl von Argumenten mit `*args` akzeptiert.
- Type Hints für `*args` und den Dictionary-Rückgabewert verwenden.
- Eingebaute Funktionen wie `min()`, `max()` und `sum()` auf die Argumente anwenden.
- Einen Edge Case (keine Argumente) sauber behandeln.

**Erwartetes Ergebnis:**
```text
# Bei Aufruf von noten_statistik(1.0, 1.3, 2.0, 4.0, 2.7, 2.5)
Statistik 1: {'beste': 1.0, 'schlechteste': 4.0, 'durchschnitt': 2.25}

# Bei Aufruf von noten_statistik(2.3)
Statistik 2: {'beste': 2.3, 'schlechteste': 2.3, 'durchschnitt': 2.3}

# Bei Aufruf von noten_statistik()
Statistik 3: {'beste': None, 'schlechteste': None, 'durchschnitt': 0.0}
```

## Aufgabe 7.4: Brutto-Preise berechnen mit `map`
*(ca. 20 Min)*

**Aufgabenstellung:**
Gegeben ist eine Liste von Dictionaries, die Produkte mit Netto-Preisen repräsentieren. Erstelle mit `map()` und einer `lambda`-Funktion eine neue Liste dieser Produkte, bei der jedes Dictionary zusätzlich den Brutto-Preis (Netto * 1.19) enthält.

**Vorgegebene Liste:**
```python
produkte = [
    {"name": "Laptop", "preis_netto": 1199.00},
    {"name": "Maus", "preis_netto": 25.00},
    {"name": "Tastatur", "preis_netto": 79.50},
]
```

**Lernziele:**
- Die `map()`-Funktion zur Transformation von Elementen in einer Liste anwenden.
- Eine `lambda`-Funktion für eine kurze, anonyme Operation definieren.
- Mit komplexeren Datenstrukturen (Listen von Dictionaries) in funktionalen Konstrukten arbeiten.

**Erwartetes Ergebnis:**
```text
[{'name': 'Laptop', 'preis_netto': 1199.0, 'preis_brutto': 1426.81}, {'name': 'Maus', 'preis_netto': 25.0, 'preis_brutto': 29.75}, {'name': 'Tastatur', 'preis_netto': 79.5, 'preis_brutto': 94.61}]
```

## Aufgabe 7.5: Mitarbeiter-Filter
*(Integrationsaufgabe, ca. 30 Min)*

**Aufgabenstellung:**
Gegeben ist eine Liste von Mitarbeitern (als Dictionaries). Schreibe eine flexible Funktion `filter_mitarbeiter()`, die diese Liste nach beliebigen Kriterien filtern kann. Die Kriterien sollen als Schlüsselwort-Argumente (`**kwargs`) übergeben werden und prüfen auf **exakte Gleichheit**.

**Vorgegebene Liste:**
```python
mitarbeiter = [
    {"name": "Anna", "abteilung": "IT", "jahre_im_unternehmen": 5},
    {"name": "Ben", "abteilung": "Marketing", "jahre_im_unternehmen": 2},
    {"name": "Clara", "abteilung": "IT", "jahre_im_unternehmen": 8},
    {"name": "David", "abteilung": "IT", "jahre_im_unternehmen": 2},
]
```
**Funktionssignatur:** `filter_mitarbeiter(mitarbeiter_liste: list[dict], **kriterien) -> list[dict]`

**Lernziele:**
- Eine Funktion mit `**kwargs` für eine variable Anzahl von Schlüsselwort-Argumenten erstellen.
- Die `filter()`-Funktion mit einer `lambda`-Funktion für eine dynamische Filterung nutzen.
- Über die `.items()` eines Dictionaries (`kriterien`) iterieren, um mehrere Bedingungen zu prüfen.
- Alle Konzepte des Kapitels in einer praxisnahen, datenorientierten Aufgabe kombinieren.

**Erwartetes Ergebnis:**

* **Anwendung der `filter_mitarbeiter`-Funktion (Gleichheitsprüfung):**

    ```text
    # Bei Aufruf von: filter_mitarbeiter(mitarbeiter, abteilung="IT")
    IT-Mitarbeiter: [{'name': 'Anna', 'abteilung': 'IT', 'jahre_im_unternehmen': 5}, {'name': 'Clara', 'abteilung': 'IT', 'jahre_im_unternehmen': 8}, {'name': 'David', 'abteilung': 'IT', 'jahre_im_unternehmen': 2}]
    ```

* **Exkurs: Komplexe Filter mit der `filter()`-Funktion**

    Unsere `filter_mitarbeiter`-Funktion ist für einfache Gleichheitsabfragen (`==`) optimiert. Für komplexere Logik (z.B. Vergleiche wie `>` oder String-Methoden wie `.startswith()`) nutzen wir die eingebaute `filter()`-Funktion direkt mit einer passenden `lambda`-Funktion.

    ```python
    # Beispiel 1: Filtern nach Abteilung UND Erfahrung > 3 Jahre
    # list(filter(lambda m: m.get("abteilung") == "IT" and m.get("jahre_im_unternehmen", 0) > 3, mitarbeiter))
    Erfahrene IT-Mitarbeiter: [{'name': 'Anna', 'abteilung': 'IT', 'jahre_im_unternehmen': 5}, {'name': 'Clara', 'abteilung': 'IT', 'jahre_im_unternehmen': 8}]

    # Beispiel 2: Filtern nach Namen, die mit "B" beginnen
    # list(filter(lambda m: m.get("name", "").startswith("B"), mitarbeiter))
    Alle B's: [{'name': 'Ben', 'abteilung': 'Marketing', 'jahre_im_unternehmen': 2}]
    ```

