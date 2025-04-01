// SimShell.zig
// This module will handle the core event loop, input, and lifecycle for the NoMapNeeded framework.

const std = @import("std");

pub const SimShell = struct {
    // Felder, die dein Shell-Objekt benötigt.
    // Zum Beispiel Referenzen auf Fenster, Config-Settings, etc.
    pub var isRunning: bool = true;

    /// Initialize the SimShell
    pub fn init() SimShell {
        const shell = SimShell{
            .isRunning = true,
            // hier könnte man weitere Felder initialisieren
        };

        return shell;
    }

    /// Main loop (blocking).
    /// Runs until `isRunning` is set to false or the user closes the window.
    pub fn update(self: *SimShell) !void {
        // Hier kommt eure Haupt-Schleife:
        while (self.isRunning) {
            // 1) Events verarbeiten: Input abfragen, Tastatur, Maus etc.
            //    z.B. window.pollEvents() oder sokol.pollEvents()
            //    oder wie auch immer ihr das Handling realisiert.

            // 2) Update-Logik (z.B. euer UI, Stats, Game Logic, etc.)
            //    -> hier könntet ihr später Callbacks oder Event-Queues abarbeiten.

            // 3) Render-Aufruf (falls nötig), also Draw-Calls an die GPU schicken.
            //    z.B. sokol.gfx.beginFrame(...) ... sokol.gfx.endFrame()

            // 4) Kleines Sleep oder Sync, damit die CPU nicht durchdreht.
            //    var duration = std.time.ns_per_s / 60; // ~16ms
            //    std.time.sleep(duration);
        }
    }

    /// Clean up the shell and close resources
    pub fn shutdown(self: *SimShell) void {
        // Falls ihr irgendwelche Ressourcen offen habt,
        // hier freigeben oder Grafikkontext schließen.
        self.isRunning = false;
    }
};
