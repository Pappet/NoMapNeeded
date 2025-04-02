const std = @import("std");
const SimShell = @import("core/simshell.zig").SimShell;
const sokol = @import("sokol"); // Haupt-Modul aus der Abhängigkeit
const sapp = sokol.app; // Application Lifecycle, Input, Fenster
const slog = sokol.log; // Logging (optional)

pub fn main() !void {
    var shell = SimShell.init();
    sapp.run(.{
        .width = 800,
        .height = 600,
        .window_title = "NoMapNeeded",
        .init_cb = SimShell.init_c,
        .frame_cb = SimShell.run_c,
        .cleanup_cb = SimShell.shutdown_c,
        .logger = .{ .func = slog.func },
    });
    defer shell.shutdown(); // sorgt dafür, dass am Ende aufgeräumt wird
    try shell.run();
}
