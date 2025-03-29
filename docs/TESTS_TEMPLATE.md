# NoMapNeeded – Test Template & Strategy

This document defines the structure, conventions, and goals for writing tests in the NoMapNeeded framework. All modules must include basic unit tests and, where appropriate, integration tests.

---

## ✅ General Testing Principles

- Every module must have at least one **unit test**
- Integration tests must be added for cross-module behavior (e.g., UI triggers event, which modifies game state)
- Tests must be readable and self-contained
- Each test must include a short comment describing its intent

---

## 📦 Test Directory Structure

```
/src/tests
│
├── unit
│   ├── button_test.zig
│   ├── panel_test.zig
│   ├── stats_test.zig
│   └── ...
│
├── integration
│   ├── ui_to_event_test.zig
│   ├── stats_persistence_test.zig
│   └── ...
```

Each module should also contain inline `test` blocks for direct testing of exposed functions.

---

## 🧪 Unit Test Template

```zig
const std = @import("std");
const testing = std.testing;

const Button = @import("../../ui/button.zig");

test "Button should emit click event" {
    var clicked = false;

    var btn = Button.init("Click Me", fn() void {
        clicked = true;
    });

    try btn.click();
    try testing.expect(clicked);
}
```

---

## 🔗 Integration Test Template

```zig
const std = @import("std");
const testing = std.testing;

const SimShell = @import("../../core/simshell.zig");
const Button = @import("../../ui/button.zig");
const Stats = @import("../../game/stats.zig");

// Integration test: UI click changes stat

test "Clicking work button increases money stat" {
    var shell = SimShell.init();
    var stats = Stats.init();

    var btn = Button.init("Work", fn() void {
        stats.increase("money", 10);
    });

    try btn.click();
    try testing.expectEqual(10, stats.get("money"));
}
```

---

## 📝 Test Documentation

Each test file should include a short header comment:

```zig
// stats_test.zig
// Unit tests for the Stats module. Ensures stat creation, retrieval, and modification behave as expected.
```

---

## 📈 Test Tracking Goals

- ✅ Each module tested in isolation
- ✅ Cross-module behavior verified via integration tests
- ✅ CI-compatible (tests can be run via `zig test` or custom runner)
- ✅ Easy to extend when new features are added

---

## 📄 Next Steps

- Add unit tests for all MVP modules
- Begin adding integration tests once event system is connected
- Document uncovered modules and plan for future coverage

