const std = @import("std");

pub const Renderer = struct { init: fn () void, update: fn () void, shutdown: fn () void };
