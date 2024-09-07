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

    std.debug.print("+---+---+---+---+---+---+---+---+", .{});
    std.debug.print("\n", .{});
    std.debug.print("| r | n | b | q | k | b | n | r |", .{});
    std.debug.print("\n", .{});
    std.debug.print("+---+---+---+---+---+---+---+---+", .{});
    std.debug.print("\n", .{});
    std.debug.print("| p | p | p | p | p | p | p | p |", .{});
    std.debug.print("\n", .{});
    std.debug.print("+---+---+---+---+---+---+---+---+", .{});
    std.debug.print("\n", .{});
    std.debug.print("|   |   |   |   |   |   |   |   |", .{});
    std.debug.print("\n", .{});
    std.debug.print("+---+---+---+---+---+---+---+---+", .{});
    std.debug.print("\n", .{});
    std.debug.print("|   |   |   |   |   |   |   |   |", .{});
    std.debug.print("\n", .{});
    std.debug.print("+---+---+---+---+---+---+---+---+", .{});
    std.debug.print("\n", .{});
    std.debug.print("|   |   |   |   |   |   |   |   |", .{});
    std.debug.print("\n", .{});
    std.debug.print("+---+---+---+---+---+---+---+---+", .{});
    std.debug.print("\n", .{});
    std.debug.print("|   |   |   |   |   |   |   |   |", .{});
    std.debug.print("\n", .{});
    std.debug.print("+---+---+---+---+---+---+---+---+", .{});
    std.debug.print("\n", .{});
    std.debug.print("|   |   |   |   |   |   |   |   |", .{});
    std.debug.print("\n", .{});
    std.debug.print("+---+---+---+---+---+---+---+---+", .{});
    std.debug.print("\n", .{});
    std.debug.print("| P | P | P | P | P | P | P | P |", .{});
    std.debug.print("\n", .{});
    std.debug.print("+---+---+---+---+---+---+---+---+", .{});
    std.debug.print("\n", .{});
    std.debug.print("| R | N | B | Q | K | B | N | R |", .{});
    std.debug.print("\n", .{});
    std.debug.print("+---+---+---+---+---+---+---+---+", .{});
    std.debug.print("\n", .{});
}
