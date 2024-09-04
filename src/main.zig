const std = @import("std");

const renderer = @import("renderer/renderer.zig");

pub fn main() void {

    // Para comprobar que @intFromEnum no es compile-time en este caso
    var bgcolor = renderer.BgColor.RED;
    if (std.os.argv.len > 1) {
        bgcolor = renderer.BgColor.BLUE;
    }
    renderer.nice_print(bgcolor, renderer.TextColor.BRIGHT_WHITE, "Hola desde zig con color y colores as enum(u8)\n");
}
