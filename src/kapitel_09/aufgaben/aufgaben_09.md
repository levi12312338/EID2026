# Übungsaufgaben zum Kapitel 09: Dateien und Fehlerbehandlung
*(Gesamtzeit: ca. 120-150 Min)*

In diesem Kapitel lernen wir, wie unsere Programme mit dem Dateisystem interagieren können. Wir speichern Daten dauerhaft in Text-, CSV- und JSON-Dateien, laden sie wieder ein und lernen, wie man Programme so schreibt, dass sie auf Fehler wie eine nicht gefundene Datei robust reagieren.

#### Aufgaben zu Kapitel 09
- [ ] Aufgabe 09-01
- [ ] Aufgabe 09-02
- [ ] Aufgabe 09-03
- [ ] Aufgabe 09-04
- [ ] Aufgabe 09-05
---

## Aufgabe 9.1: Persönliches Logbuch
*(ca. 20 Min)*

**Aufgabenstellung:**
Schreibe ein Programm, das als einfaches Logbuch dient. Bei jedem Start soll es den Benutzer nach einem neuen Eintrag fragen. Jeder Eintrag soll zusammen mit dem aktuellen Datum und der Uhrzeit in die Datei `logbuch.txt` geschrieben werden. Wichtig ist, dass neue Einträge immer am Ende der Datei hinzugefügt werden und alte Einträge erhalten bleiben.

**Lernziele:**
- Eine Datei im "Anhängen"-Modus (`'a'`) mit `with open()` öffnen, um bestehende Inhalte nicht zu überschreiben.
- Text in eine Datei schreiben und das Zeilenumbruchzeichen `\n` korrekt verwenden.
- Ein externes Modul (`datetime`) importieren und nutzen, um einen Zeitstempel zu erzeugen.

**Erwartetes Ergebnis:**
Nachdem das Programm zweimal ausgeführt wurde, könnte der Inhalt der `logbuch.txt` so aussehen:
```text
2025-09-26 10:30:15 - Erstes Kapitel OOP gelernt.
2025-09-26 14:45:01 - Übungsaufgabe zur Vererbung gelöst.
```

## Aufgabe 9.2: Konfigurationsdatei einlesen
*(ca. 25 Min)*

**Aufgabenstellung:**
Ein Programm soll seine Einstellungen aus einer Datei `config.ini` laden. Implementiere eine Funktion, die versucht, diese Datei zu lesen und die Konfiguration als Dictionary zurückgibt. Wenn die Datei nicht existiert, soll das Programm nicht abstürzen, sondern eine benutzerfreundliche Fehlermeldung ausgeben und mit einem leeren Dictionary weiterarbeiten.

**Beispielinhalt für `config.ini`:**
```ini
username=admin
theme=dark
language=de
```

**Lernziele:**
- Den EAFP-Ansatz ("Easier to Ask for Forgiveness than Permission") mit `try...except` anwenden.
- Gezielt einen `FileNotFoundError` abfangen und darauf reagieren.
- Eine Textdatei Zeile für Zeile einlesen und die gelesenen Strings mit `.strip()` und `.split()` verarbeiten.

**Erwartetes Ergebnis:**
```text
# Wenn config.ini existiert:
Konfiguration erfolgreich geladen: {'username': 'admin', 'theme': 'dark', 'language': 'de'}

# Wenn config.ini NICHT existiert:
Fehler: Konfigurationsdatei 'config.ini' nicht gefunden. Standardwerte werden verwendet.
Konfiguration geladen: {}
```

## Aufgabe 9.3: CSV-Export für Kundendaten
*(ca. 25 Min)*

**Aufgabenstellung:**
Du hast eine Liste von Kundendaten, die als Liste von Dictionaries vorliegt. Schreibe ein Programm, das diese Daten in eine saubere CSV-Datei namens `kunden.csv` exportiert. Die erste Zeile der CSV-Datei soll die Spaltenüberschriften (`kunden_nr`, `name`, `stadt`) enthalten.

**Lernziele:**
- Das `csv`-Modul für das Schreiben von strukturierten Daten verwenden.
- `csv.DictWriter` nutzen, um eine Liste von Dictionaries direkt in eine CSV-Datei zu schreiben.
- Die Wichtigkeit von `newline=''` beim Öffnen von CSV-Dateien verstehen, um Leerzeilen zu vermeiden.

**Erwartetes Ergebnis:**
Der Code soll eine Datei `kunden.csv` mit folgendem Inhalt erzeugen:
```csv
kunden_nr,name,stadt
K001,Anna Schmidt,Berlin
K002,Ben Meier,München
K003,Clara Wolf,Hamburg
```

## Aufgabe 9.4: JSON-Daten verarbeiten
*(ca. 25 Min)*

**Aufgabenstellung:**
Ein Programm erhält Bestelldaten im JSON-Format. Erstelle zuerst eine Datei namens `order_B-2025-42.json` mit dem unten gezeigten Inhalt. Lade die Daten aus dieser Datei und berechne den Gesamtpreis der Bestellung. Der Gesamtpreis ergibt sich aus der Summe der Preise aller Artikel, multipliziert mit ihrer jeweiligen Menge.

**Inhalt für `order_B-2025-42.json`:**
```json
{
  "bestell_nr": "B-2025-42",
  "kunde": "Max Mustermann",
  "artikel": [
    {
      "produkt_id": "A-123",
      "name": "Gaming-Maus",
      "menge": 1,
      "preis_pro_stueck": 79.99
    },
    {
      "produkt_id": "C-789",
      "name": "USB-C Kabel",
      "menge": 3,
      "preis_pro_stueck": 9.50
    }
  ]
}
```

**Lernziele:**
- Das `json`-Modul verwenden, um JSON-formatierte Daten einzulesen und in Python-Objekte (Dictionaries, Listen) umzuwandeln.
- In verschachtelten Datenstrukturen (Dictionary enthält Liste von Dictionaries) navigieren.
- Daten aus einer komplexen Struktur extrahieren und für Berechnungen verwenden.

**Erwartetes Ergebnis:**
```text
Gesamtpreis für Bestellung B-2025-42: 108.49 EUR
```

## Aufgabe 9.5: Highscore-Liste speichern und laden
*(Integrationsaufgabe, ca. 30 Min)*

**Aufgabenstellung:**
Erstelle ein Programm, das eine Highscore-Liste für ein Spiel verwaltet.
1.  Definiere eine Klasse `Spieler` mit den Attributen `name` und `score`.
2.  Beim Start soll das Programm versuchen, eine existierende Highscore-Liste aus der Datei `highscore.pkl` zu laden. Falls die Datei nicht existiert, soll eine neue, leere Liste erstellt werden.
3.  Das Programm fragt den aktuellen Benutzer nach seinem Namen und seinem erreichten Score.
4.  Der neue Spieler wird zur Liste hinzugefügt.
5.  Die Liste wird absteigend nach dem `score` sortiert.
6.  Die aktualisierte Liste wird zurück in die Datei `highscore.pkl` gespeichert.
7.  Anschließend wird die Top-5-Highscore-Liste auf der Konsole ausgegeben.

**Lernziele:**
- Eigene Objekte mit dem `pickle`-Modul serialisieren (speichern) und deserialisieren (laden).
- `try...except` zur Behandlung eines `FileNotFoundError` nutzen, um einen sauberen "ersten Start" der Anwendung zu ermöglichen.
- Alle Kernkonzepte des Kapitels (Dateizugriff, Fehlerbehandlung, Serialisierung) in einer Anwendung kombinieren.
- Listen von Objekten mit einer `lambda`-Funktion im `key`-Argument von `.sort()` sortieren.

**Erwartetes Ergebnis:**

**Beim ersten Start:**
```text
Gib deinen Namen ein: Anna
Gib deinen Score ein: 1500
Highscore gespeichert!

--- HIGHSCORE ---
1. Anna: 1500
```
**Beim zweiten Start:**
```text
Gib deinen Namen ein: Ben
Gib deinen Score ein: 2000
Highscore gespeichert!

--- HIGHSCORE ---
1. Ben: 2000
2. Anna: 1500
```

