# NoMapNeeded

**NoMapNeeded** is a modular and lightweight framework for building menu-driven simulation games — games without traditional world maps, controlled entirely through menus, buttons, and tabs.

The framework is written in Zig and is built around a core module called `SimShell`, which provides UI lifecycle management, input handling, and the foundation for all other modules.

---

## 🎯 Project Goals

- Provide essential UI components tailored for stat-based and turn-based simulation games.
- Encourage clean modularity and minimal coupling.
- Be easy to extend and maintain, even for beginner developers.
- Serve as a personal learning project for the Zig programming language and game framework design.

---

## 📚 Project Documentation

All core documentation is maintained in the `/docs` folder:

- [Project Roadmap](docs/Project_Roadmap.md): Development phases, milestones, and detailed implementation goals.
- [MVP Compliance Checklist](docs/MVP_Compliance_Checklist.md): Rules and criteria for what the MVP must fulfill.
- [Developer Commitment & Guidelines](docs/Developer_Commitment.md): Principles to ensure modular, understandable, and testable development.
- [Test Template & Strategy](docs/Tests_Template.md): Patterns and conventions for writing unit and integration tests.

---

## 🚀 Getting Started

> ⚠️ **Note:** The project is currently in the early conceptual and documentation phase. There is no working code yet — development will start after the MVP structure and technical decisions finalized.

### 1. Clone the Repository

```bash
git clone https://github.com/Pappet/NoMapNeeded.git
cd NoMapNeeded
```

### 2. Build the Framework

Make sure you have [Zig](https://ziglang.org/download/) installed, then:

```bash
zig build
```

### 3. Run Tests

```bash
zig test src/main.zig
```

(Or run individual test files inside `/src/tests/`)

---

## 💡 Design Philosophy

NoMapNeeded is designed around the following principles:

- **Modularity First**: Each module has one responsibility and interacts via clean interfaces.
- **Separation of Concerns**: UI elements trigger events — game logic handles consequences.
- **Learning-Driven Development**: Simplicity, readability, and documentation are favored over cleverness.
- **Retained-Mode UI**: UI components persist and are only updated on demand.

---

## 👥 Contributing

Contributions, feedback, and learning input are welcome — especially from other Zig learners! Please make sure to follow the principles outlined in the [Developer Commitment](docs/Developer_Commitment.md).

---

## ⚠️ Disclaimer

This framework is being developed as a personal learning project with the active assistance of OpenAI's ChatGPT for guidance and architectural decisions.

The project is intentionally simple and handcrafted to foster understanding — production use is possible but not the primary goal.

---

Happy Simulating ✨