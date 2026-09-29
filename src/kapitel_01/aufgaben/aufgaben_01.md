# Übungsaufgaben zum Kapitel 01 Einführung und erste Schritte 
(Gesamtzeit: ca. 90-120 Min)

In diesem Kapitel festigen wir die Grundlagen der Interaktion mit Benutzer:innen und der formatierten Textausgabe.


#### ✔️ Aufgaben zu Kapitel 01
- [ ] Aufgabe 01-01
- [ ] Aufgabe 01-02
- [ ] Aufgabe 01-03
- [ ] Aufgabe 01-04
- [ ] Aufgabe 01-05
- [ ] Aufgabe 01-06
---

## Aufgabe 1.1: In der IDE orientieren - `Hello, World!`
*(ca. 5 Minuten)*

**Nutze die Datei `src/kapitel_01/aufgabe_01-01.py` für Deine Lösung.**

1. Programmiere das **"Hello, World!"** Codebeispiel aus dem Kapitel 1 nach und führe es mit dem Run-Button aus!
2. Experimentiere mit der interaktiven Ausführung via <kbd>SHIFT</kbd>+<kbd>ENTER</kbd>!

***Hinweise***:
- Im Kapitel 1 findest Du detaillierte Hinweise zur `print(...)`-Funktion, die beliebige Inhalte auf der Konsole ausgibt.

**Erwartetes Ergebnis:**

```text
Hello, World!
```

## Aufgabe 1.2: In der IDE orientieren - `Hello, You!`
*(ca. 10 Minuten)*

**Nutze die Datei `src/kapitel_01/aufgabe_01-02.py` für Deine Lösung.**

1. Programmiere das **"Hello, You!"** Codebeispiel aus dem Kapitel 1 nach und führe es mit dem Run-Button aus!
2. Experimentiere mit der interaktiven Ausführung via <kbd>SHIFT</kbd>+<kbd>ENTER</kbd>!

***Hinweise***:
- Im Kapitel 1 findest Du detaillierte Hinweise zur `input(...)`-Funktion, die Eingaben entgegennimmt.
- Du wirst den Namen in einer Variable speichern wollen, `name` wäre eine passende Bezeichnung.
- Eingaben auf der Konsole werden mit <kbd>ENTER</kbd> abgeschlossen!

**Erwartetes Ergebnis:**

- bei Eingabe von `Bob`

```text
Wie ist dein Name? Bob
Hello, Bob!
```

## Aufgabe 1.3: ASCII-Art Visitenkarte
*(ca. 15 Minuten)*

**Nutze die Datei `src/kapitel_01/aufgabe_01-03.py` für Deine Lösung.**

**Aufgabenstellung:**
Gestalte eine digitale Visitenkarte. Dein Programm soll den Benutzer nach seinem Namen und einem persönlichen Motto (oder Hobby) fragen. Anschließend sollen diese Informationen in einem einfachen Rahmen aus Sonderzeichen ausgegeben werden.

**Lernziele:**

- `input()` zur Erfassung von Benutzerdaten nutzen.
- Variablen zur Speicherung von Eingaben nutzen.
- `print()` kreativ zur Gestaltung einer textbasierten grafischen Ausgabe verwenden.
- Variablen zur Speicherung der Eingaben anlegen und in der Ausgabe wiederverwenden.

**Erwartetes Ergebnis:**

- bei Eingabe von `Bob` und `Eat, Program, Sleep, Repeat.`

```text
Bitte gib deinen Namen ein: Bob
Was ist Dein Motto? Eat, Program, Sleep, Repeat.

******************************************
*
* Bob
* Motto: Eat, Program, Sleep, Repeat.
*
******************************************
```

## Aufgabe 1.4: Gedicht-Generator
*(ca. 20 Minuten)*

**Nutze die Datei `src/kapitel_01/aufgabe_01-04.py` für Deine Lösung.**

**Aufgabenstellung:**

Erstelle ein Programm, das den Benutzer nach drei Wörtern fragt: einem Substantiv (z.B. `"Variable"`), einem Verb in der 3. Person Singular (z.B. *"arbeitet"*) und einem Adjektiv (z.B. `"elegant"`). Setze diese Wörter anschließend in die Lücken eines kurzen, Python-bezogenen Gedichts ein.

**Gedicht-Vorlage:**

```text
Mein Skript, es braucht ein [Substantiv],
es [Verb] schnell, kommt gut voran.
Die Logik ist so [Adjektiv],
ich bin ein echter Python-Fan!
```

**Lernziele:**

- Mehrere `input()`-Anweisungen nacheinander verwenden, um verschiedene Daten zu sammeln.
- Variablen sinnvoll benennen (`substantiv`, `verb`, etc.).
- *f-Strings* nutzen, um Variablen elegant in einen vorgegebenen Text-Template einzufügen.

***Hinweise:***

- Im Kapitel 2 findest Du detaillierte Hinweise zu den sogenannten *f-Strings*. Eine Verkettung mit dem `+`-Operator erfüllt notfalls auch den Zweck. 

**Erwartetes Ergebnis:**

- bei Eingabe von `Notebook` und `läuft` und `rasant`

```text
Dein Python-Gedicht:
Mein Skript, es braucht ein Notebook,
es läuft schnell, kommt gut voran.
Die Logik ist so rasant,
ich bin ein echter Python-Fan!
```

## Aufgabe 1.5: Konversation mit einem Programm
*(ca. 20 Minuten)*

**Nutze die Datei `src/kapitel_01/aufgabe_01-05.py` für Deine Lösung.**

**Aufgabenstellung:**

Schreibe ein Skript, das eine einfache, zweistufige Konversation führt. Das Programm soll den Benutzer nach seinem Namen fragen, diesen in der nächsten Frage wiederverwenden und auf die Antwort des Benutzers mit einer personalisierten Nachricht reagieren.

**Lernziele:**

- Den Inhalt einer Variable im `prompt` einer `input()`-Funktion verwenden, um dynamische Fragen zu stellen.
- Den Ablauf einer einfachen, schrittweisen Interaktion programmieren.
- Zeichenketten so verketten, dass ein flüssiger Dialog entsteht

**Erwartetes Ergebnis:**

- bei Eingabe von `Bob` und `blendend`

```text
Hallo! Ich bin dein Python-Programm. Wie heißt Du? Bob
Hallo Bob! Wie geht es Dir heute? blendend
Schön zu hören, dass es dir 'blendend' geht! Ich wünsche dir einen tollen Tag."

```


## Aufgabe 1.6: Reiseplan-Zusammenfassung
*(Integrationsaufgabe, ca. 30 Minuten)*

**Nutze die Datei `src/kapitel_01/aufgabe_01-06.py` für Deine Lösung.**

**Aufgabenstellung:**

Ein Programm soll dabei helfen, eine Reise zu planen. Es soll das Reiseziel, die Dauer in Tagen, das Budget und eine Hauptaktivität abfragen. Anschließend soll das Programm eine saubere, mehrzeilige und übersichtlich formatierte Zusammenfassung des Reiseplans ausgeben.

**Lernziele:**

- Ein komplettes, kleines Programm von der Dateneingabe bis zur strukturierten Ausgabe konzipieren.
- Mehrere `input()` und `print()`-Anweisungen sowie `f-Strings` nutzen, um eine gut lesbare, tabellenartige Übersicht zu erzeugen.
- Konzepte des ersten Kapitels in einer Anwendung kombinieren.

***Hinweise:***

Kombiniere Deine Ergebnisse aus den bisherigen Aufgabenlösungen zu diesem Kapitel!

**Erwartetes Ergebnis:**

**- bei Eingabe von `Arakis`, `9`, `42` und `Surfing`**

```text
Wohin soll die Reise gehen? Paris
Wie viele Tage soll die Reise dauern? 9
Was ist das geplante Budget in Euro? 42
Was ist eine geplante Hauptaktivität? Surfing

--- DEINE REISEPLANUNG ---
****************************
Reiseziel: 	Arakis
Dauer: 		9 Tage
Budget: 	42 Euro
Aktivität: 	Surfing
****************************
Gute Reise!
```
