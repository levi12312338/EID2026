# Übungsaufgaben zum Kapitel 04: Kontrollfluss: Schleifen und Iteration
*(Gesamtzeit: ca. 100-130 Min)*

#### Aufgaben zu Kapitel 04

- [ ] Aufgabe 04-01
- [ ] Aufgabe 04-02
- [ ] Aufgabe 04-03
- [ ] Aufgabe 04-04
- [ ] Aufgabe 04-05
- [ ] Aufgabe 04-06


## Aufgabe 4.1: Das Zahlenratespiel
*(ca. 20 Min)*

**Nutze die Datei `src/kapitel_04/aufgabe_04-01.py` für Deine Lösung.**

**Aufgabenstellung:**

Schreibe ein Programm, das eine "geheime" Zahl (z.B. `42`) festlegt. Der Benutzer soll nun so lange raten, bis er die Zahl erraten hat. Nach jedem Versuch soll das Programm einen Hinweis geben, ob die geratene Zahl zu hoch, zu niedrig oder korrekt war. Zähle die Versuche, die für das korrekte Erraten notwendig waren!

**Lernziele:**

* Eine `while`-Schleife verwenden, um eine Aktion so lange zu wiederholen, bis eine Bedingung erfüllt ist.

* Benutzereingaben innerhalb einer Schleife verarbeiten.

* `if-elif-else`-Strukturen innerhalb der Schleife nutzen, um unterschiedliche Hinweise zu geben.

**Hinweise:**

Wenn Du das `random`-Modul importierst, kannst du mit `random.randint(1, 100)` eine Zufallszahl zwischen 1 und 100 erzeugen.

```python
import random

# ...
zufallszahl = random.randint(1, 100)
```

**Erwartetes Ergebnis:**

```
--- Zahlenratespiel ---
Ich habe mir eine Zahl zwischen 1 und 100 ausgedacht. Rate mal!
Dein Tipp: 50
Zu hoch! Versuche es nochmal.
Dein Tipp: 25
Zu niedrig! Versuche es nochmal.
Dein Tipp: 42
Korrekt! Du hast die Zahl 42 in 3 Versuchen erraten!
```

## Aufgabe 4.2: Der FizzBuzz-Klassiker

*(ca. 15 Min)*

**Nutze die Datei `src/kapitel_04/aufgabe_04-02.py` für Deine Lösung.**

**Aufgabenstellung:**

Schreibe ein Programm, das alle Zahlen von 1 bis 100 ausgibt. Dabei gelten folgende Regeln:

* Ist die Zahl durch 3 teilbar, gib anstelle der Zahl "Fizz" aus.

* Ist die Zahl durch 5 teilbar, gib anstelle der Zahl "Buzz" aus.

* Ist die Zahl sowohl durch 3 als auch durch 5 teilbar, gib "FizzBuzz" aus.

* Ansonsten gib die Zahl selbst aus.

**Lernziele:**

* Eine `for`-Schleife mit `range()` nutzen, um einen festen Zahlenbereich zu durchlaufen.

* Den Modulo-Operator (`%`) verwenden, um die Teilbarkeit zu prüfen.

* Eine `if-elif-else`-Kette korrekt anordnen, um den spezifischsten Fall ("FizzBuzz") zuerst zu behandeln.

**Erwartetes Ergebnis (Ausschnitt):**

```
1
2
Fizz
4
Buzz
Fizz
...
14
FizzBuzz
...

```

## Aufgabe 4.3: Die Einkaufsliste

*(ca. 20 Min)*

**Nutze die Datei `src/kapitel_04/aufgabe_04-03.py` für Deine Lösung.**

**Aufgabenstellung:**

Erstelle eine Einkaufsliste als `list`. Das Programm soll den Benutzer so lange nach neuen Artikeln fragen, bis dieser "fertig" eingibt. Jeder eingegebene Artikel soll zur Liste hinzugefügt werden. Am Ende soll die komplette Einkaufsliste ausgegeben werden.

**Lernziele:**

* Eine `while True`-Schleife (Endlosschleife) in Kombination mit `break` nutzen, um eine variable Anzahl von Eingaben zu ermöglichen.

* Eine `list` initialisieren und mit der `.append()`-Methode dynamisch Elemente hinzufügen.

* Den Schleifenablauf mit einer `if`-Bedingung und `break` gezielt beenden.

**Erwartetes Ergebnis:**

```
Gib einen Artikel für die Einkaufsliste ein (oder 'fertig' zum Beenden): Milch
Gib einen Artikel für die Einkaufsliste ein (oder 'fertig' zum Beenden): Brot
Gib einen Artikel für die Einkaufsliste ein (oder 'fertig' zum Beenden): fertig

--- Deine Einkaufsliste ---
- Milch
- Brot

```

## Aufgabe 4.4: Positive Zahlen summieren

*(ca. 20 Min)*

**Nutze die Datei `src/kapitel_04/aufgabe_04-04.py` für Deine Lösung.**

**Aufgabenstellung:**

Gegeben ist eine Liste von Zahlen (positiv und negativ). Schreibe ein Programm, das durch die Liste iteriert und nur die positiven Zahlen summiert. Negative Zahlen sollen ignoriert werden.

**Lernziele:**

* Über die Elemente einer vorgegebenen `list` mit einer `for`-Schleife iterieren.

* Die `continue`-Anweisung verwenden, um die Verarbeitung für bestimmte Elemente (negative Zahlen) zu überspringen und mit der nächsten Iteration fortzufahren.

* Eine Summenvariable korrekt initialisieren und innerhalb der Schleife aktualisieren.

**Erwartetes Ergebnis:**

```
Gegebene Liste: [10, -5, 20, 0, -15, 8]
Ignoriere negative Zahl: -5
Ignoriere negative Zahl: -15
Die Summe der positiven Zahlen ist: 38

```

## Aufgabe 4.5: Ein dickes Pluszeichen zeichnen (ASCIIARTIST)

*(ca. 20 Min)*

**Nutze die Datei `src/kapitel_04/aufgabe_04-05.py` für Deine Lösung.**

**Aufgabenstellung:**

Schreibe ein Programm, das ein "dickes" Pluszeichen mit einer festen Größe (15x15) und Dicke (5) aus `+`-Symbolen auf der Konsole ausgibt.

**Lernziele:**

* Verschachtelte `for`-Schleifen verwenden, um ein 2D-Muster zu erstellen.

* Komplexe `if`-Bedingungen innerhalb der Schleifen nutzen, um zu steuern, welches Zeichen (`+` oder Leerzeichen) an welcher Position gedruckt wird.

* Die `print()`-Funktion mit `end=""` nutzen, um Zeichen in derselben Zeile auszugeben und Zeilenumbrüche manuell zu steuern.

**Erwartetes Ergebnis:**

```
     +++++     
     +++++     
     +++++     
     +++++     
     +++++     
+++++++++++++++
+++++++++++++++
+++++++++++++++
+++++++++++++++
+++++++++++++++
     +++++     
     +++++     
     +++++     
     +++++     
     +++++     

```

## Aufgabe 4.6: Passwort-Generator
*(Integrationsaufgabe, ca. 30 Min)*

**Nutze die Datei `src/kapitel_04/aufgabe_04-06.py` für Deine Lösung.**

**Aufgabenstellung:**

Erstelle einen einfachen Passwort-Generator. Das Programm soll den Benutzer fragen, wie viele Kleinbuchstaben, Großbuchstaben, Zahlen und Sonderzeichen das Passwort enthalten soll. Anschließend soll es ein zufälliges Passwort mit der gewünschten Zusammensetzung erstellen und ausgeben.

**Hinweis:** Du benötigst das `random`-Modul. Importiere es am Anfang deines Skripts mit `import random`. Nützliche Zeichenketten sind bereits vordefiniert. Du kannst mit `random.choice(eine_sequenz)` ein zufälliges Zeichen aus einer Sequenz (z.B. einem String oder einer Liste) auswählen.

**Lernziele:**

* Mehrere `for`-Schleifen mit `range()` basierend auf Benutzereingaben verwenden.
* Eine Liste von Zeichen aufbauen und am Ende zu einem String zusammenfügen (`"".join(listenname)`).
* Die Liste der Passwortzeichen vor dem Zusammenfügen mischen, um die Zufälligkeit zu erhöhen (`random.shuffle(listenname)`).
* Konzepte aus früheren Kapiteln (Eingabe, Typumwandlung, Listen) in einer komplexeren Logik anwenden.

**Erwartetes Ergebnis (Beispiel, da zufällig):**

```
--- Passwort-Generator ---
Anzahl Kleinbuchstaben: 4
Anzahl Großbuchstaben: 2
Anzahl Zahlen: 2
Anzahl Sonderzeichen: 2

Dein zufälliges Passwort lautet: T$q8!yK3pf

```

### Exkurs: Wie sicher ist dieses Passwort?

Die Sicherheit eines Passworts, das mit diesem Generator erstellt wird, hängt vollständig von der **Länge und Komplexität** ab, die Du als Benutzer wählst. Das Werkzeug ist gut, aber die Verantwortung für ein sicheres Ergebnis liegt bei Dir! Das [`secrets`-Modul](https://docs.python.org/3/library/secrets.html) von Python findet in der professionellen Softwareentwicklung für kryptografische Zwecke Einsatz, wenn es um höchste Sicherheit geht. z.B. für das generieren von geheimen Schlüsseln.

Beachte die folgenden Empfehlungen des **Bundesamts für Sicherheit in der Informationstechnik (BSI)**:

* **Stärke durch Länge:** Ein sicheres Passwort sollte **mindestens 12 Zeichen** lang sein. Für besonders kritische Zugänge (z.B. Passwort-Manager) werden **mindestens 20 Zeichen** empfohlen.

* **Komplexität durch Vielfalt:** Nutze immer eine Mischung aus allen vier Zeichenarten: Großbuchstaben, Kleinbuchstaben, Zahlen, Sonderzeichen!

Weitere Informationen und Tipps findest Du direkt beim BSI:
[BSI - Empfehlungen für sichere Passwörter](https://www.bsi.bund.de/DE/Themen/Verbraucherinnen-und-Verbraucher/Informationen-und-Empfehlungen/Cyber-Sicherheitsempfehlungen/Accountschutz/Sichere-Passwoerter-erstellen/sichere-passwoerter-erstellen_node.html).

