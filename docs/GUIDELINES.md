# NoMapNeeded Development Guidelines

These guidelines ensure the project's modularity, maintainability, scalability, and ease of extension.

## 📦 Modularity

- **Single Responsibility Principle**
  - Every module should have one clear, distinct responsibility.
  - Avoid overlapping functionality between modules.

- **Clear Module Boundaries**
  - Modules interact exclusively through well-defined and minimal public APIs.
  - No direct modification of another module's internal state.

- **Core Module ("SimShell")**
  - Handles window creation, main loop, input, UI routing, and basic event dispatching.
  - Does **not** contain specific gameplay logic.

---

## 🔌 API Design

- **Minimalistic Approach**
  - Keep public methods and fields minimal and focused.
  - Every public API should be clearly documented with comments explaining usage and context.

- **Consistent Naming**
  - Modules and functions follow a consistent naming scheme, e.g.:
    ```zig
    Event_Dispatch();
    UI_Button_Create();
    ```

- **No Global State**
  - Avoid global variables unless absolutely necessary (e.g., logging, settings).
  - Prefer passing context or state explicitly between functions/modules.

---

## 🧪 Testing

- **Unit Testing**
  - Every module must have corresponding unit tests.
  - Tests should cover common and edge cases of module functionality.
  - File naming convention: `<module_name>_test.zig`

- **Integration Testing**
  - Tests that check module interaction should be created where applicable.
  - Ensure modules correctly communicate through their defined APIs.

- **Continuous Testing**
  - Run tests regularly during development to ensure code integrity.

---

## 💻 Code Style & Documentation

- **Comments**
  - All code comments are in clear, concise English.
  - Document not just "how," but also "why" specific implementation choices are made.

    Example:
    ```zig
    // Initializes the SimShell module.
    // Sets up main application window and input handlers.
    fn SimShell_Init() void {}
    ```
  
- **Documentation Files**
  - All documentation and guidelines (like this one) should be written in GitHub-flavored Markdown (`.md`).

---

## 🔧 Extensibility & Plugin Architecture

- **Event System**
  - Clearly defined, modular event dispatch mechanism (to be detailed separately).
  - New game features should be easily integrable through event registration.

- **Plugin & Scripting**
  - Early consideration of scripting and plugins: define centralized registration points where possible.
  - Modularize systems so they can later be enhanced or replaced via plugins or scripts.

- **Theming & UI Customization**
  - Avoid hardcoding colors, fonts, or visual assets directly in UI modules.
  - Centralize UI styles and allow easy modification through configuration files or theme modules.

---

## 📐 Layout & UI Guidelines

- **Simple Layout System**
  - Initial support for grid, row, and column layouts.
  - Design modules so additional layouts can be added without reworking existing systems.

- **Scalability & Responsiveness**
  - UI should adapt gracefully to different window sizes or resolutions.
  - Consider relative or percentage-based sizing over fixed pixels.

---

## 🗃️ Folder Structure Recommendation

- Maintain a consistent and clear directory structure:
```plaintext
    NoMapNeeded/
    ├── src/
    │   ├── simshell/
    │   ├── modules/
    │   │   ├── ui/
    │   │   │   ├── button.zig
    │   │   │   ├── panel.zig
    │   │   │   └── ...
    │   │   ├── events/
    │   │   ├── stats/
    │   │   └── ...
    │   └── main.zig
    ├── tests/
    │   ├── simshell_test.zig
    │   ├── ui_button_test.zig
    │   └── ...
    ├── docs/
    │   ├── GUIDELINES.md
    │   └── ...
    ├── examples/
    │   └── ...
    ├── README.md
    ├── LICENSE
    └── build.zig
```
---

## ⚙️ Committing & Collaboration (Optional, Recommended)

- Write clear and descriptive commit messages in English.
    Example:
    ```arduino
    Add basic event dispatcher implementation
    Fix bug: UI buttons not triggering click events correctly
    ```
- Regularly push incremental changes to ensure clarity and incremental development progress.