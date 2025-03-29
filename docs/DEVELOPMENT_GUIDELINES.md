# NoMapNeeded – Development Guidelines

This document defines high-level development practices and principles for working on the NoMapNeeded framework. It complements the [Developer Commitment](./Developer_Commitment.md), [Commit Guidelines](./Commit_Guidelines.md), and [MVP Compliance Checklist](./MVP_Compliance_Checklist.md).

---

## 🧱 Code Architecture Principles

- **Modularity First**: Each module should handle one responsibility only.
- **Loose Coupling**: Avoid direct dependencies between unrelated modules.
- **Separation of Concerns**: UI triggers events; game logic consumes them.
- **Minimal Globals**: Global variables should only exist in the SimShell core (if at all).
- **Encapsulate Logic**: Logic related to game state (e.g., stats) must never live in UI code.

---

## 📦 Project Structure (Standard Layout)

```
/src/core      → SimShell & application shell logic
/src/modules   → All functional modules (UI, stats, events, time, tabs)
/src/tests     → Unit and integration tests
/docs          → Design documents and meta-guides
```

Each module should have:
- A clearly named `.zig` source file
- At least one inline `test` block
- A header comment explaining the module’s purpose

---

## 🧪 Testing

See [Tests Template & Strategy](./Tests_Template.md) for details.

Summary:
- Each module must have at least one **unit test**
- Integration tests must validate cross-module behavior
- Tests should be readable and focused

---

## 📄 Documentation

- All core concepts and decisions should be documented in `/docs`
- Every new phase must include a **Lessons Learned** file
- Modules should be self-explanatory through inline comments and usage examples

---

## ✅ Commit Messages

Commit message rules have been moved to their own document:
➡️ See [Commit Guidelines](./Commit_Guidelines.md)

---

## 🧭 Development Flow

1. Plan feature or module using [Project Roadmap](./Project_Roadmap.md)
2. Ensure feature fits into [MVP Compliance Checklist](./MVP_Compliance_Checklist.md) or a later phase
3. Implement with tests and documentation
4. Commit using proper tags ([Commit Guidelines](./Commit_Guidelines.md))
5. Reflect on process in Lessons Learned if feature is substantial

---

For all contributors: remember this is a learning-first project. Clear code, documented thought processes, and simplicity are more important than advanced tricks or full coverage. Build to understand — and enjoy it!

