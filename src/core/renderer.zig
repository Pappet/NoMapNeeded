const std = @import("std");

pub const Renderer = struct { init: *const fn () void, update: *const fn () void, shutdown: *const fn () void };
