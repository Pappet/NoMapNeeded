# Menu Game Framework

A lightweight, modular framework for building **menu-driven games** like life simulations, business simulations, or interactive story games – fully controlled via buttons, tabs, and text panels.  
Written in **Zig** as a learning project, focusing on clarity, flexibility, and performance.

---

## 🎯 Project Goals

- Provide essential UI components for menu-based games
- Be easily extendable and highly modular
- Keep dependencies minimal
- Serve as a learning project for Zig and game architecture

---

## 🚀 Roadmap & Milestones

### Phase 1 – Core & UI Basics
**Goal:** A clickable menu with visible information

- Project structure setup
- Integrate `sokol-gfx` renderer & open window
- Capture mouse clicks and keyboard input

**UI Components:**
- Button with text & click event
- Label for text display
- Panel as container
- Simple layout system (Grid / Row / Column)

**Gameplay Logic:**
- Stat system (e.g. fatigue, money, time)
- API to modify & display stats
- Time system (hours, days)
- Actions consume time

---

### Phase 2 – Gameplay & Quality of Life Features
**Goal:** A first playable simulation

- Event system: Connect actions to stat changes
- Multi-stage events (e.g. random encounters)
- Tab system: Switch between views (status, actions, inventory)
- Save/Load system

---

### Phase 3 – Extensions & Nice-to-Have Features
**Goal:** Prepare the framework for complex games

- Chat / Event log: Display what happens
- Text input field: For name input, etc.
- Debug console: Execute ingame commands
- Scrollable lists & tables: Inventory, stats
- Inventory system: Items, slots, item logic

---

### Phase 4 – Deluxe (Optional, Long-Term)
**Goal:** Extras for polish & modding support

- UI skinning / themes
- Animations & UI feedback
- Plug-in system (enable modding)
- Scripting support (e.g. custom mini-event language)

---

## 🧩 Use Case Examples

- Life simulations
- Business / Economy games
- Interactive fiction
- Management games without map navigation

---

## ⚙️ Tech Stack

- **Language:** [Zig](https://ziglang.org/)
- **Rendering:** [sokol-gfx](https://github.com/floooh/sokol) (minimal cross-platform graphics)
- **Platform:** Cross-platform (Windows, Linux, Mac)

---

## 📝 Development Guidelines

- **Code comments:** Always in **English**
- **Structure:** Clear, minimal, and well-documented
- **Focus:** Simplicity first, performance second

---

## 🤝 Contribution

This project is a learning-focused hobby project.  
Suggestions, feedback & PRs are welcome after MVP completion.

---
