const std = @import("std");
const Build = std.Build;
const OptimizeMode = std.builtin.OptimizeMode;

pub fn build(b: *Build) !void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const dep_sokol = b.dependency("sokol", .{
        .target = target,
        .optimize = optimize,
    });

    const NoMapNeeded = b.addExecutable(.{
        .name = "NoMapNeeded",
        .target = target,
        .optimize = optimize,
        .root_source_file = b.path("src/core/SimShell.zig"),
    });

    NoMapNeeded.root_module.addImport("sokol", dep_sokol.module("sokol"));
    b.installArtifact(NoMapNeeded);
    const run = b.addRunArtifact(NoMapNeeded);
    b.step("run", "Run NoMapNeeded").dependOn(&run.step);
}
