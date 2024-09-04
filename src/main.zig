const std = @import("std");

const renderer = @import("renderer/renderer.zig");

pub fn main() void {

    // Para comprobar que @intFromEnum no es compile-time en este caso
    var bgcolor = renderer.BgColor.RED;
    if (std.os.argv.len > 1) {
        bgcolor = renderer.BgColor.BLUE;
    }
    renderer.nice_print(bgcolor, renderer.TextColor.BRIGHT_WHITE, "Hola desde zig con color y colores as enum(u8)\n");
    renderer.nice_print(renderer.BgColor.RED, renderer.TextColor.BLACK, "     \n");
    renderer.nice_print(renderer.BgColor.BRIGHT_YELLOW, renderer.TextColor.BLACK, "     \n");
    renderer.nice_print(renderer.BgColor.MAGENTA, renderer.TextColor.BLACK, "     \n");
    std.debug.print("\n\n\n", .{});

    {
        for (0..4) |_| {
            for (0..4) |_| {
                for (0..8) |i| {
                    var bgcolor_chess = renderer.BgColor.GREEN;
                    if (i % 2 == 0) {
                        bgcolor_chess = renderer.BgColor.WHITE;
                    }

                    renderer.nice_print(bgcolor_chess, renderer.TextColor.BLACK, "        ");
                }
                std.debug.print("\n", .{});
            }

            for (0..4) |_| {
                for (0..8) |i| {
                    var bgcolor_chess = renderer.BgColor.GREEN;
                    if (i % 2 == 1) {
                        bgcolor_chess = renderer.BgColor.WHITE;
                    }

                    renderer.nice_print(bgcolor_chess, renderer.TextColor.BLACK, "        ");
                }
                std.debug.print("\n", .{});
            }
        }
    }
}
