# NoMapNeeded – MVP Planning

This is the milestone and feature planning for the NoMapNeeded framework.  
The goal is to build a solid foundation for menu-driven simulation games – without a classic map, but with menus, tabs, stats, and events.

---

## Phase 1 – Core & UI Basics (Minimal Viable Product)

**Goal:** A functional framework that handles input, displays menus, and manages basic stats.

### Tasks

### 🟢 Core System
- [ ] Project structure & build system (Zig, `zig build`)
- [ ] Integrate sokol-gfx renderer & open window
- [ ] Input handling: mouse clicks & keyboard input
- [ ] SimShell Core: event loop & update/render logic

### 🟢 UI Components
- [ ] Button with text & click event
- [ ] Label (static text)
- [ ] Panel as container
- [ ] Simple layout system (grid, row, column)

### 🟢 Gameplay Logic
- [ ] Stat system (e.g., fatigue, money, time)
- [ ] API to display & modify stats
- [ ] Time system (hours, days)
- [ ] Actions consume time (e.g., button click = +1 hour)

---

## Phase 2 – Gameplay Mechanics & Structure

**Goal:** Make it possible to create small simulation games with NoMapNeeded.

### Tasks

### 🔵 Gameplay Features
- [ ] Event system: link actions to stat changes
- [ ] Multi-stage events (e.g., random encounters, decision events)
- [ ] Tab system: switch between views (e.g., status, actions, inventory)
- [ ] Save/load system (simple JSON or Zig serialization)

### 🔵 Comfort Features
- [ ] Scrollable panels & lists
- [ ] Focus navigation (keyboard: tab, arrow keys)
- [ ] Basic theming for UI (colors, padding, fonts)

---

## Phase 3 – Extensions & Nice-to-Have

**Goal:** Make NoMapNeeded more flexible, polished, and integrable.

### Tasks

### 🟣 Advanced Features
- [ ] Event log component (text log of what happened in the game)
- [ ] Integrated debug/command console
- [ ] Input parser for text commands
- [ ] Hook/plugin system for extensions

### 🟣 Developer Tools
- [ ] Example game (mini life simulation)
- [ ] API documentation
- [ ] Examples & templates in the `examples/` folder

---

## Bonus Ideas (optional, future)

- Mouse-over tooltips
- Dynamic UI layouts
- Event editor as external tool
