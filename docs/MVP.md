# NoMapNeeded – MVP-Planung

Dies ist die Meilenstein- und Feature-Planung für das NoMapNeeded-Framework.  
Ziel ist es, Schritt für Schritt ein solides Grundgerüst für menügesteuerte Simulationsspiele zu bauen – ohne klassische Map, aber mit Menü, Tabs, Stats und Events.

---

## Phase 1 – Core & UI Basics (Minimal Viable Product)

**Ziel:** Ein lauffähiges Grundgerüst, das Eingaben verarbeitet, Menüs anzeigt und erste Stats verwaltet.

### Aufgaben

### 🟢 Grundsystem
- [ ] Projektstruktur & Buildsystem (Zig, `zig build`)
- [ ] sokol-gfx Renderer integrieren & Fenster öffnen
- [ ] Input-Handling: Mausklicks & Tastatureingaben
- [ ] SimShell Core: Event-Loop & Update/Render-Logik

### 🟢 UI-Komponenten
- [ ] Button mit Text & Click-Event
- [ ] Label (statischer Text)
- [ ] Panel als Container
- [ ] Einfaches Layout-System (Grid, Row, Column)

### 🟢 Gameplay-Logik
- [ ] Stat-System (z. B. Müdigkeit, Geld, Zeit)
- [ ] API zur Anzeige & Modifikation von Stats
- [ ] Zeitsystem (Stunden, Tage)
- [ ] Aktionen verbrauchen Zeit (z. B. Button-Klick = +1 Stunde)

---

## Phase 2 – Gameplay-Mechaniken & Struktur

**Ziel:** Erste kleine Simulationsspiele mit NoMapNeeded möglich machen.

### Aufgaben

### 🔵 Gameplay-Features
- [ ] Event-System: Verknüpfe Aktionen mit Stat-Änderungen
- [ ] Mehrstufige Events (z. B. zufällige Begegnungen, Entscheidungsevents)
- [ ] Tab-System: Wechsel zwischen Ansichten (z. B. Status, Aktionen, Inventar)
- [ ] Save-/Load-System (einfache JSON oder Zig-Serialisierung)

### 🔵 Komfort-Features
- [ ] Scrollbare Panels & Listen
- [ ] Fokus-Navigation (Tastatur: Tab, Pfeiltasten)
- [ ] Basis-Theming für UI (Farben, Padding, Fonts)

---

## Phase 3 – Erweiterungen & Nice-to-Have

**Ziel:** NoMapNeeded wird flexibler, schöner und besser integrierbar.

### Aufgaben

### 🟣 Advanced Features
- [ ] Event-Log-Komponente (Text-Log, was im Spiel passiert ist)
- [ ] Integrierte Debug-/Befehlskonsole
- [ ] Input-Parser für Textbefehle
- [ ] Hook-/Plugin-System für Erweiterungen

### 🟣 Entwickler-Tools
- [ ] Beispielspiel (Mini-Lebenssimulation)
- [ ] Dokumentation der API
- [ ] Beispiele & Templates im `examples/`-Ordner

---

## Bonus-Ideen (optional, Zukunft)

- Mouse-Over Tooltips
- Dynamische UI-Layouts
- Event-Editor als externes Tool
