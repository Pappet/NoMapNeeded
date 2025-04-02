// Importiere die benötigten Sokol-Module
const sokol = @import("sokol"); // Haupt-Modul aus der Abhängigkeit
const sapp = sokol.app; // Application Lifecycle, Input, Fenster
const sgfx = sokol.gfx; // Grafik-API Abstraktion
const sglue = sokol.glue; // Glue-Code für die Plattform
const slog = sokol.log; // Logging (optional)
const std = @import("std");
const Renderer = @import("renderer.zig").Renderer;

pub fn sokol_init() void {
    sgfx.setup(.{
        .logger = .{ .func = slog.func }, // Sokol Logging verwenden
        .environment = sglue.environment(),
    });
    std.log.info("Sokol Initialized.", .{});
}

pub fn sokol_update() void {
    sgfx.endPass();
    sgfx.commit();
}

pub fn sokol_shutdown() void {
    sgfx.shutdown();
    std.log.info("Sokol Shutdown.", .{});
}

pub const sokol_renderer = Renderer{
    .init = sokol_init,
    .update = sokol_update,
    .shutdown = sokol_shutdown,
};
