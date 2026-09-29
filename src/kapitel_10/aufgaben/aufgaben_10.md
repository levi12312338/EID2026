# Übungsaufgaben zum Kapitel 10: Ausblick - Python in der Praxis
*(Gesamtzeit: ca. 75-90 Min)*

In diesem abschließenden Kapitel werfen wir einen Blick in die Praxis und kombinieren viele der gelernten Konzepte, um eine kleine, aber nützliche Anwendung zu bauen. Wir erweitern das API-Beispiel aus dem Skript zu einem dynamischen Wetter-Tool indem wir zwei APIs orchestrieren, mit einer Favoriten-Funktion, Caching und einer Umrechnung der Windrichtung.

---
#### Aufgaben zu Kapitel 10
- [ ] Aufgabe 10-01
---

## Aufgabe 10.1: Dynamischer Wetter-Client mit Favoriten, Cache und Windrichtung
*(Integrationsaufgabe, ca. 75-90 Min)*

**Aufgabenstellung:**
Erweitere den Wetter-Client zu einem nützlichen Werkzeug, das sich deine Lieblingsorte merken, Koordinaten zwischenspeichern und die Windrichtung verständlich anzeigen kann. Wir bauen die Anwendung Schritt für Schritt auf.

**Schritt 1: Geocoding-Funktion implementieren**
* Implementiere eine Funktion `get_koordinaten(ort)`.
* Diese Funktion soll die **Nominatim-API** von OpenStreetMap aufrufen, um die geografischen Koordinaten für einen Ort zu finden. Ein API-Aufruf mit der `requests`-Bibliothek besteht typischerweise aus mehreren Teilen:
    * **Basis-URL:** Die feste Adresse des API-Endpunkts.
    * **Parameter (`params`):** Ein Dictionary, das die Anfrage spezifiziert (z.B. nach welchem Ort wir suchen). `requests` hängt diese automatisch an die URL an.
    * **Header (`headers`):** Ein Dictionary für Metadaten zur Anfrage. Viele APIs, wie Nominatim, verlangen einen `User-Agent`, um deine Anwendung zu identifizieren. Das ist eine wichtige Regel der "API-Etikette".

* **Dein Code-Gerüst könnte so aussehen:**
    ```python
    import requests

    def get_koordinaten(ort):
        geocode_url = "https://nominatim.openstreetmap.org/search"
        params = {
            'q': ort,
            'format': 'json',
            'limit': 1
        }
        headers = {
            'User-Agent': 'PythonWeatherScript/1.0'
        }

        try:
            # Anfrage an die Nominatim API senden
            response = requests.get(geocode_url, params=params, headers=headers)
            response.raise_for_status()  # Fehler bei Status-Codes wie 4xx oder 5xx auslösen
            
            # Hier folgt die Logik, um die Koordinaten aus der Antwort zu extrahieren...
            data = response.json()
            if data:
                # Extrahiere lat und lon aus dem ersten Ergebnis
                # ...
                # Gib ein Tupel zurück
                # ...
                
        except requests.exceptions.RequestException as e:
            print(f"Fehler bei der Geocoding-Anfrage für '{ort}': {e}")
            return None
    ```
* Implementiere die fehlende Logik: Wenn die Anfrage erfolgreich war, ist die Antwort eine Liste von JSON-Objekten. Extrahiere `lat` und `lon` aus dem ersten Objekt dieser Liste.
* Die Funktion soll ein Tupel `(lat, lon)` mit den Koordinaten oder `None` zurückgeben, falls der Ort nicht gefunden wurde oder ein Fehler auftrat.

**Schritt 2: Caching für Effizienz hinzufügen**
* **Problem:** Jedes Mal, wenn wir nach demselben Ort fragen, wird eine neue Anfrage an die Nominatim-API gesendet. Das ist ineffizient und verschwendet Ressourcen. Viele APIs haben Nutzungs-Limits oder sind kostenpflichtig.
* **Lösung:** Wir führen einen lokalen **Cache** ein. Das bedeutet, wir speichern einmal abgerufene Koordinaten in einer lokalen Datei namens `geocache.json`.
* **Deine Aufgaben:**
    1.  Schreibe Hilfsfunktionen, um den Cache aus `geocache.json` zu laden und wieder zu speichern. Das Laden muss auch funktionieren, wenn die Datei noch nicht existiert.
    2.  Erweitere deine `get_koordinaten(ort, cache)`-Funktion:
        * Prüfe **zuerst**, ob der `ort` bereits im `cache` vorhanden ist. Wenn ja, gib die Koordinaten direkt aus dem Cache zurück.
        * Nur wenn der Ort **nicht** im Cache ist, rufe die Nominatim-API auf.
        * Speichere die neuen Koordinaten nach einem erfolgreichen API-Aufruf im Cache, bevor du sie zurückgibst.

**Schritt 3: Windrichtung umrechnen**
* Die Wetter-API liefert die Windrichtung als Gradzahl (0-360). Diese Angabe soll für den Benutzer in eine Himmelsrichtung (z.B. "N", "SO", "WNW") umgerechnet werden.
* Implementiere eine Funktion `grad_in_himmelsrichtung(grad)`, die eine Gradzahl entgegennimmt und eine der 16 Himmelsrichtungen als Text zurückgibt.

**Schritt 4: Favoriten und Hauptlogik**
* **Favoriten:** Erstelle manuell eine Datei `favoriten.json` mit einer Liste von Städtenamen, z.B.: `["Berlin", "Hamburg", "Lissabon"]`. Schreibe eine Funktion, die diese Datei sicher einliest.
* **Hauptlogik:** Schreibe eine Hauptfunktion, die:
    1.  Zuerst die Favoriten und den Cache lädt.
    2.  Für jeden Favoriten das Wetter abruft (unter Nutzung deiner Geocoding- und Caching-Funktion) und inklusive der umgerechneten Windrichtung anzeigt.
    3.  Anschließend eine Schleife startet, die den Benutzer nach weiteren Orten fragt, bis dieser die Eingabe mit Enter beendet.

**Lernziele:**
- Zwei verschiedene Web-APIs in einer Anwendung orchestrieren.
- Einen einfachen, dateibasierten Cache mit JSON implementieren, um API-Anfragen zu optimieren.
- Konzepte aus den Kapiteln 7 (Funktionen), 9 (Dateien, JSON, Fehlerbehandlung) und 10 (APIs) in einem finalen Projekt integrieren.
- Eine algorithmische Umrechnung (Grad in Himmelsrichtung) implementieren.
- Anwendungsdaten (Favoriten) über eine Konfigurationsdatei verwalten.

**Erwartetes Ergebnis:**

**Nachdem du `favoriten.json` mit `["Berlin", "New York"]` erstellt hast:**
```text
--- Wetter für Ihre Favoriten ---

Lade Koordinaten für Berlin von der Nominatim API...
Koordinaten für Berlin im Cache gespeichert.
Lade Wetterdaten für Berlin...

--- Aktuelles Wetter in Berlin ---
Temperatur: 16.5 °C
Wind: 10.1 km/h aus WSW

Lade Koordinaten für New York von der Nominatim API...
Koordinaten für New York im Cache gespeichert.
Lade Wetterdaten für New York...

--- Aktuelles Wetter in New York ---
Temperatur: 22.1 °C
Wind: 15.5 km/h aus SO

----------------------------------

Geben Sie einen weiteren Ort ein (oder Enter zum Beenden): 
Auf Wiedersehen!
```

---
### Lust auf mehr? Ideen für weitere Abenteuer

Herzlichen Glückwunsch, du hast eine etwas komplexere Anwendung gebaut! Wenn du aus Freude am Programmieren weitermachen möchtest, sind hier einige Ideen, wie du die Wetter-App noch ausbauen könntest:

#### 1. Wetter-Icons mit Emojis ☀️🌧️❄️
* **Die Idee:** Die Wetter-API liefert einen `weathercode` (z.B. `3` für "Bedeckt"). Erstelle eine Funktion, die diesen Code in ein passendes Emoji umwandelt und es in der Ausgabe anzeigt. So wird deine App noch ansprechender!
* **Was du übst:** Dictionaries (als Mapping von Code zu Emoji), `if-elif-else`-Ketten.

#### 2. Interaktive Favoriten-Verwaltung
* **Die Idee:** Erlaube dem Benutzer, Favoriten direkt im Programm hinzuzufügen oder zu entfernen. Du könntest Befehle wie `+Berlin` (hinzufügen) oder `-Hamburg` (entfernen) implementieren.
* **Was du übst:** String-Methoden (`.startswith()`), Datei-I/O (Lesen und Schreiben von `favoriten.json`), Listen-Manipulation (`.append()`, `.remove()`).

#### 3. Wettervorhersage für die nächsten Tage
* **Die Idee:** Die Open-Meteo API kann auch eine Vorhersage liefern. Passe die API-URL an, um z.B. die tägliche Höchst- und Tiefsttemperatur für die nächsten 3 Tage abzufragen (z.B. mit `&daily=temperature_2m_max,temperature_2m_min`).
* **Was du übst:** API-Dokumentation lesen, komplexere JSON-Antworten parsen (Listen von Dictionaries), `for`-Schleifen zur Anzeige der Vorhersage.

#### 4. Einheiten umrechnen (z.B. Fahrenheit)
* **Die Idee:** Frage den Benutzer, ob er die Temperatur in Celsius oder Fahrenheit sehen möchte. Implementiere eine Umrechnungsfunktion und wende sie entsprechend an.
* **Was du übst:** Funktionen, `if-else`, mathematische Operationen.

Sicher hast Du weitere Ideen, Viel Spaß dabei! 🚀

