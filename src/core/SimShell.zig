// SimShell.zig
// This module will handle the core event loop, input, and lifecycle for the NoMapNeeded framework.
const std = @import("std");
const Renderer = @import("renderer.zig").Renderer;
const sokol_renderer = @import("sokol_renderer.zig").sokol_renderer;
const sokol = @import("sokol"); // Haupt-Modul aus der Abhängigkeit
const sapp = sokol.app; // Application Lifecycle, Input, Fenster
const slog = sokol.log; // Logging (optional)

var current_renderer: *const Renderer = &sokol_renderer;

pub const SimShell = struct {
    isRunning: bool,

    pub fn init_c() callconv(.c) void {
        const shell = SimShell.init();
        _ = shell; // Verhindert eine "unused variable"-Warnung
        current_renderer.init();
    }

    pub fn init() SimShell {
        const shell = SimShell{
            .isRunning = true,
        };

        return shell;
    }

    pub fn run_c() callconv(.c) void {
        // Wrapper für die run-Funktion
        var shell = SimShell.init();
        shell.run() catch |err| {
            std.log.err("Fehler in run: {}", .{err});
        };
    }

    pub fn run(self: *SimShell) !void {
        while (self.isRunning) {
            // Hier kommt eure Haupt-Schleife:
            // 1) Events verarbeiten: Input abfragen, Tastatur, Maus etc.
            // 2) Update-Logik (z.B. euer UI, Stats, Game Logic, etc.)
            // 3) Render-Aufruf (falls nötig), also Draw-Calls an die GPU schicken.
            current_renderer.update();
            // 4) Kleines Sleep oder Sync, damit die CPU nicht durchdreht.
        }
    }

    pub fn shutdown_c() callconv(.c) void {
        // Wrapper für die shutdown-Funktion
        var shell = SimShell.init();
        shell.shutdown();
    }

    pub fn shutdown(self: *SimShell) void {
        self.isRunning = false;
        current_renderer.shutdown();
    }
};
