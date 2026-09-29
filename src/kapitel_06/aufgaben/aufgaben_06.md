# Übungsaufgaben zum Kapitel 06: Datenstrukturen: Dictionaries und Sets
*(Gesamtzeit: ca. 100-130 Min)*

In diesem Kapitel arbeiten wir mit Dictionaries, um Daten über Schlüssel-Wert-Paare zu modellieren, und mit Sets, um die Einzigartigkeit von Elementen sicherzustellen und Mengenoperationen durchzuführen.

#### Aufgaben zu Kapitel 06
- [ ] Aufgabe 06-01
- [ ] Aufgabe 06-02
- [ ] Aufgabe 06-03
- [ ] Aufgabe 06-04
- [ ] Aufgabe 06-05
---

## Aufgabe 6.1: Artikelstammdaten verwalten
*(ca. 20 Min)*

**Aufgabenstellung:**
Modelliere die Stammdaten für einen Artikel in einem Onlineshop mit einem Dictionary. Führe anschließend eine Preisaktualisierung durch und füge eine neue Information hinzu.

**Schritte:**
1. Erstelle ein Dictionary `artikel` mit den Schlüsseln `"artikel_nr"`, `"name"`, `"preis"` und `"lagerbestand"`. Wähle passende Werte.
2. Gib den aktuellen Preis des Artikels aus.
3. Aktualisiere den Preis um 10% (Preis * 1.1).
4. Füge einen neuen Schlüssel `"hersteller"` mit einem passenden Wert hinzu.
5. Gib das vollständige, aktualisierte Dictionary aus.

**Lernziele:**
- Ein Dictionary mit verschiedenen Datentypen als Werte erstellen.
- Auf Werte über ihre Schlüssel zugreifen.
- Bestehende Werte in einem Dictionary modifizieren.
- Neue Schlüssel-Wert-Paare zu einem Dictionary hinzufügen.

**Erwartetes Ergebnis (Beispielwerte):**
```text
Ursprünglicher Preis: 49.99 Euro
Das aktualisierte Artikelprofil:
{'artikel_nr': 'A-123', 'name': 'USB-C Hub', 'preis': 54.99, 'lagerbestand': 75, 'hersteller': 'TechPrime'}
```

## Aufgabe 6.2: Wort-Häufigkeit zählen
*(ca. 25 Min)*

**Aufgabenstellung:**
Schreibe ein Programm, das die Häufigkeit jedes Wortes in einem gegebenen Satz zählt. Das Programm soll nicht zwischen Groß- und Kleinschreibung unterscheiden und Satzzeichen ignorieren.

**Vorgegebener Satz:** `"Python ist super! Ja, wirklich super."`

**Schritte:**
1. Bereinige den Satz: Wandle ihn in Kleinbuchstaben um und entferne die Satzzeichen.
2. Zerlege den Satz in eine Liste einzelner Wörter.
3. Iteriere über die Wortliste und nutze ein Dictionary, um die Häufigkeit jedes Wortes zu speichern.

**Lernziele:**
- String-Methoden (`.lower()`, `.replace()`, `.split()`) zur Textvorverarbeitung nutzen.
- Ein Dictionary dynamisch aufbauen, um Zählungen zu speichern.
- Die `.get()`-Methode eines Dictionaries mit einem Standardwert verwenden, um Zähler sicher zu erhöhen.

**Erwartetes Ergebnis:**
```text
Häufigkeit der Wörter:
- python: 1
- ist: 1
- super: 2
- ja: 1
- wirklich: 1
```

## Aufgabe 6.3: Kurs-Teilnehmer abgleichen
*(ca. 20 Min)*

**Aufgabenstellung:**
Zwei Kurse, "Python-Grundlagen" und "Datenbanken", haben Teilnehmerlisten. Finde heraus, welche Studierenden beide Kurse belegt haben und welche nur den Python-Kurs, aber nicht den Datenbanken-Kurs besuchen.

**Vorgegebene Listen:**
`python_kurs = ["Anna", "Ben", "Clara", "David"]`
`db_kurs = ["Clara", "David", "Eva", "Frank"]`

**Schritte:**
1. Wandle beide Teilnehmerlisten in Sets um.
2. Nutze eine Mengenoperation, um die Schnittmenge (Teilnehmer in beiden Kursen) zu finden.
3. Nutze eine weitere Mengenoperation, um die Differenz (Teilnehmer nur im Python-Kurs) zu ermitteln.

**Lernziele:**
- Sets aus Listen erstellen, um die Eindeutigkeit von Elementen zu nutzen.
- Die Mächtigkeit von Mengenoperationen (`intersection`, `difference` oder die Operatoren `&`, `-`) verstehen und anwenden.

**Erwartetes Ergebnis:**
```text
Studierende in beiden Kursen: {'David', 'Clara'}
Studierende nur im Python-Kurs: {'Anna', 'Ben'}
```

## Aufgabe 6.4: Eindeutige Bestellungen
*(ca. 20 Min)*

**Aufgabenstellung:**
Ein System protokolliert jede eingehende Bestellung als Tupel `(bestell_id, kunden_id)`. Erstelle aus einer Liste dieser Protokolle eine Übersicht, die anzeigt, wie viele *eindeutige* Kunden eine Bestellung aufgegeben haben.

**Vorgegebene Liste:**
`bestellungen = [(101, 'K-001'), (102, 'K-002'), (103, 'K-001'), (104, 'K-003'), (105, 'K-002')]`

**Lernziele:**
- Daten aus einer Liste von Tupeln gezielt extrahieren.
- Ein Set verwenden, um automatisch Duplikate aus einer Sammlung zu entfernen.
- Die `len()`-Funktion auf ein Set anwenden, um die Anzahl einzigartiger Elemente zu bestimmen.

**Erwartetes Ergebnis:**
```text
Anzahl der eindeutigen Kunden: 3
```

## Aufgabe 6.5: Einfache Rechteverwaltung
*(Integrationsaufgabe, ca. 25 Min)*

**Aufgabenstellung:**
Implementiere eine einfache Rechteprüfung. Ein Dictionary speichert für verschiedene Benutzerrollen (z.B. 'admin', 'editor', 'gast'), welche Berechtigungen (als Set von Strings) diese haben. Das Programm soll eine Rolle und eine angefragte Berechtigung einlesen und prüfen, ob der Zugriff erlaubt ist.

**Vorgegebene Datenstruktur:**
```python
rollen_rechte = {
    "admin": {"lesen", "schreiben", "löschen", "benutzer_verwalten"},
    "editor": {"lesen", "schreiben"},
    "gast": {"lesen"},
}
```
**Lernziele:**
- Dictionaries und Sets kombiniert zur Modellierung von Beziehungen nutzen.
- Sicher auf Dictionary-Werte zugreifen (`.get()`).
- Den `in`-Operator für eine schnelle Mitgliedschaftsprüfung in einem Set verwenden.
- Benutzereingaben zur Steuerung eines Programms verarbeiten.

**Erwartetes Ergebnis (Beispiel-Interaktion):**
```text
Verfügbare Rollen: admin, editor, gast
Gib deine Rolle ein: editor
Welche Berechtigung wird benötigt? schreiben

Zugriff gewährt: Ein 'editor' darf 'schreiben'.
```

```text
Verfügbare Rollen: admin, editor, gast
Gib deine Rolle ein: gast
Welche Berechtigung wird benötigt? löschen

Zugriff verweigert: Ein 'gast' darf nicht 'löschen'.
```

### Exkurs: *RBAC – Role-Based Access Control*

Das in dieser Aufgabe umgesetzte Prinzip ist eine vereinfachte Form eines professionellen und weit verbreiteten Sicherheitskonzepts: der **rollen-basierten Zugriffskontrolle (Role-Based Access Control, RBAC)**.

Die Kernidee von RBAC ist, Berechtigungen nicht direkt an einzelne Benutzer zu vergeben, sondern sie in **Rollen** zu bündeln. Benutzer werden dann einer oder mehreren dieser Rollen zugewiesen.

**Vorteile dieses Konzepts:**
- **Skalierbarkeit:** In einem System mit Tausenden von Benutzern ist es viel einfacher, die Rechte von 10 Rollen zu verwalten als die von 1000 Einzelpersonen.
- **Übersichtlichkeit:** Die Rechte-Struktur ist klar definiert und leichter nachzuvollziehen.
- **Sicherheit:** Es reduziert das Risiko von Fehlkonfigurationen, da Änderungen an einer zentralen Stelle (der Rolle) vorgenommen werden und sich auf alle zugeordneten Benutzer auswirken.

Unsere Aufgabe bildet genau das ab: Das Dictionary `rollen_rechte` definiert die Rollen und ihre Berechtigungen (als Sets). Die Abfrage prüft dann, ob die Rolle des Benutzers das angefragte Recht enthält. Dies ist ein fundamentales Konzept in der IT-Sicherheit und Systemadministration.

