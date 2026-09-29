# Übungsaufgaben zum Kapitel 08: Objektorientierung: Objekte, Klassen, Assoziationen & Module
*(Gesamtzeit: ca. 120-150 Min)*

In diesem Kapitel erlernen wir die Grundlagen der objektorientierten Programmierung (OOP). Wir erstellen eigene Datentypen mit Klassen, bündeln Daten (Attribute) und Verhalten (Methoden) und modellieren die Beziehungen zwischen Objekten.

---
#### Aufgaben zu Kapitel 08
- [ ] Aufgabe 08-01
- [ ] Aufgabe 08-02
- [ ] Aufgabe 08-03
- [ ] Aufgabe 08-04
- [ ] Aufgabe 08-05
---

## Aufgabe 8.1: Die `Produkt`-Klasse
*(ca. 20 Min)*

**Aufgabenstellung:**
Erstelle eine Klasse `Produkt`, um Artikel in einem Online-Shop zu repräsentieren. Jedes Produkt soll eine `artikel_nr`, einen `namen` und einen `preis` haben. Implementiere den Konstruktor (`__init__`) und eine `__str__`-Methode für eine saubere, lesbare Ausgabe des Produkts auf der Konsole.

**Lernziele:**
- Eine einfache Klasse mit `class` definieren.
- Den `__init__`-Konstruktor verstehen und verwenden, um Objekte mit Anfangswerten (Attributen) zu erstellen.
- Die `__str__`-Methode implementieren, um eine benutzerfreundliche Textdarstellung eines Objekts zu erzeugen.
- Instanzen (Objekte) der eigenen Klasse erstellen und verwenden.

**Erwartetes Ergebnis:**
```text
# Bei Erstellung und Ausgabe von:
# p1 = Produkt("A-123", "Gaming-Maus", 79.99)
# print(p1)
Produkt A-123: Gaming-Maus - 79.99 EUR
```

## Aufgabe 8.2: Das `BankKonto` mit Methoden
*(ca. 25 Min)*

**Aufgabenstellung:**
Modelliere ein `BankKonto` mit einer Klasse. Jedes Konto hat einen `inhaber` und einen `kontostand`. Implementiere die Methoden `einzahlen(betrag)` und `abheben(betrag)`. Die `abheben`-Methode soll prüfen, ob der Kontostand für die Abhebung ausreicht. Wenn nicht, soll eine Warnung ausgegeben werden und die Transaktion nicht stattfinden.

**Lernziele:**
- Methoden definieren, die den Zustand eines Objekts (seine Attribute) verändern.
- Logik (eine `if-else`-Bedingung) innerhalb einer Methode implementieren, um Geschäftsregeln durchzusetzen (z.B. Konto nicht überziehen).
- Den `self`-Parameter verstehen, um auf die Attribute der spezifischen Instanz zuzugreifen.

**Erwartetes Ergebnis:**
```text
# Nach Initialisierung, Einzahlung und zwei Abhebeversuchen:
Neues Konto für Max Mustermann mit 1000.0 EUR eröffnet.
Kontostand nach Einzahlung: 1200.0 EUR
Abhebung erfolgreich. Neuer Kontostand: 700.0 EUR
Warnung: Abhebung nicht möglich. Kontostand zu gering.
Finaler Kontostand: 700.0 EUR
```

## Aufgabe 8.3: `Mitarbeiter` mit kontrolliertem Gehalt
*(ca. 25 Min)*

**Aufgabenstellung:**
Erstelle eine Klasse `Mitarbeiter` mit den Attributen `name` und `gehalt`. Der direkte Zugriff auf das Gehalt soll kontrolliert werden. Implementiere die Logik so, dass das Gehalt niemals auf einen negativen Wert gesetzt werden kann. Verwende dafür eine **Property** mit Getter und Setter.

**Lernziele:**
- Das Konzept der Datenkapselung verstehen.
- Eine Property mit `@property` (Getter) und `@...setter` (Setter) erstellen.
- Validierungslogik im Setter implementieren, um die Konsistenz der Objektdaten zu sichern.
- Die Konvention für "private" Attribute (z.B. `_gehalt`) kennenlernen.

**Erwartetes Ergebnis:**
```text
# Bei verschiedenen Zuweisungsversuchen:
Anna hat ein Gehalt von 50000 EUR.
Gehalt erfolgreich auf 55000 EUR geändert.
Fehler: Das Gehalt darf nicht negativ sein. Wert wurde nicht geändert.
Annas finales Gehalt: 55000 EUR
```

## Aufgabe 8.4: Assoziation: `Team` und `Mitglied`
*(ca. 25 Min)*

**Aufgabenstellung:**
Modelliere eine "hat-viele"-Beziehung (1:n Assoziation). Erstelle eine Klasse `Mitglied` (mit einem `namen`) und eine Klasse `Team`. Ein Team hat einen `team_namen` und eine Liste von `Mitglied`-Objekten. Implementiere im `Team` eine Methode `add_mitglied(mitglied)`, um ein Mitglied hinzuzufügen, und eine Methode `show_mitglieder()`, die die Namen aller Mitglieder des Teams ausgibt.

**Lernziele:**
- Eine Assoziation zwischen zwei Klassen modellieren, bei der ein Objekt eine Sammlung anderer Objekte enthält.
- Objekte einer Klasse als Attribute in einer anderen Klasse verwenden.
- Methoden schreiben, die mit den assoziierten Objekten interagieren (z.B. durch eine Liste iterieren und deren Attribute ausgeben).

**Erwartetes Ergebnis:**
```text
# Code, der zur Ausgabe führt:
# team_dev = Team("Die Entwickler")
# team_dev.add_mitglied(Mitglied("Anna"))
# team_dev.add_mitglied(Mitglied("Ben"))
# team_dev.add_mitglied(Mitglied("Clara"))
# team_dev.show_mitglieder()

Team: Die Entwickler
--------------------
- Anna
- Ben
- Clara
```

## Aufgabe 8.5: Social-Media-Hierarchie mit Vererbung
*(Integrationsaufgabe, ca. 30 Min)*

**Aufgabenstellung:**
Erstelle eine Klassenhierarchie für Social-Media-Posts.
1.  **Basisklasse `Post`:** Soll die Attribute `autor` und `inhalt` haben sowie eine Methode `anzeigen()`, die den Post grundlegend formatiert.
2.  **Kindklasse `BildPost`:** Erbt von `Post` und hat das zusätzliche Attribut `bild_datei`. Sie überschreibt die `anzeigen()`-Methode, um auch den Bild-Dateinamen anzuzeigen.
3.  **Kindklasse `VideoPost`:** Erbt von `Post` und hat die zusätzlichen Attribute `video_datei` und `dauer` (in Sekunden). Auch sie überschreibt die `anzeigen()`-Methode.

**Lernziele:**
- Das Konzept der Vererbung verstehen und anwenden.
- Eine Basisklasse und davon abgeleitete Kindklassen erstellen.
- Den Konstruktor der Elternklasse mit `super().__init__()` aufrufen, um Code-Duplikation zu vermeiden.
- Methoden der Elternklasse in den Kindklassen überschreiben (Method Overriding), um spezialisiertes Verhalten zu implementieren.
- Ein "ist-ein"-Verhältnis (ein `BildPost` ist ein `Post`) programmtechnisch abbilden.

**Erwartetes Ergebnis:**
```text
# Code, der zur Ausgabe führt:
# text_post = Post("user123", "Das ist ein einfacher Text-Post.")
# bild_post = BildPost("insta_star", "Urlaubsfoto! #sommer", "sonnenuntergang.jpg")
# video_post = VideoPost("youtuber", "Mein neues Tutorial ist online!", "anleitung.mp4", 65)
# text_post.anzeigen()
# bild_post.anzeigen()
# video_post.anzeigen()

--- POST von @user123 ---
Das ist ein einfacher Text-Post.
--------------------------

--- BILD-POST von @insta_star ---
Urlaubsfoto! #sommer
[Bild: sonnenuntergang.jpg]
--------------------------

--- VIDEO-POST von @youtuber ---
Mein neues Tutorial ist online!
[Video: anleitung.mp4 (65s)]
--------------------------
```

