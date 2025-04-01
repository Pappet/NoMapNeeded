const sokol = @import("sokol");
const slog = sokol.log;
const sg = sokol.gfx;
const sapp = sokol.app;
const sglue = sokol.glue;
const sdtx = sokol.debugtext;
const renderer = @import("renderer.zig");
const Renderer = renderer.Renderer;

pub fn sokol_init() void {
    const desc = sg.sg_desc{};
    sg.sg_setup(&desc);
}

pub fn sokol_frame() void {
    const pass_action = sg.sg_pass_action{
        .colors = [_]sg.sg_color_attachment_action{
            sg.sg_color_attachment_action{
                .action = sg.SG_ACTION_CLEAR,
                .val = sg.sg_color{ 0.0, 0.0, 0.0, 1.0 },
            },
        },
    };
    sg.sg_negin_default_pass(&pass_action, 800, 600);
    sg.sg_end_pass();
    sg.sg_commit();
}

pub fn sokol_cleanup() void {
    sg.sg_shutdown();
}

pub const sokol_renderer = Renderer{
    .init = sokol_init,
    .update = sokol_frame,
    .shutdown = sokol_cleanup,
};
