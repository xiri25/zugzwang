const std = @import("std");
const gs = @import("gamestate/gamestate.zig");
const pieces = @import("gamestate/pieces.zig");

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

    // 0 1 2 3 4 5 6 7
    //for (0..8) |i| {
    //    std.debug.print("{d} ", .{i});
    //}

    var game = gs.GameState{};
    game.CreateGame();
    std.debug.print("\n", .{});
    renderer.printChessBoard(&game.chessboard);
}
