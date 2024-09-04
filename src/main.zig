const std = @import("std");

const ascii_opener = "\x1b[";
const punto_coma = ";";
const ascii_closer_cmd = "m";
const ascii_closer = "\x1b[0";
const new_line = "\n";

pub const TextColor = enum(u32) {
    BLACK = 30,
    RED = 31,
    GREEN = 32,
    YELLOW = 33,
    BLUE = 34,
    MAGENTA = 35,
    CYAN = 36,
    WHITE = 37,
    BRIGHT_BLACK = 90,
    BRIGHT_RED = 91,
    BRIGHT_GREEN = 92,
    BRIGHT_YELLOW = 93,
    BRIGHT_BLUE = 94,
    BRIGHT_MAGENTA = 95,
    BRIGHT_CYAN = 96,
    BRIGHT_WHITE = 97,
};

// Define background color enum with original names
pub const BgColor = enum(u32) {
    BLACK = 40,
    RED = 41,
    GREEN = 42,
    YELLOW = 43,
    BLUE = 44,
    MAGENTA = 45,
    CYAN = 46,
    WHITE = 47,
    BRIGHT_BLACK = 100,
    BRIGHT_RED = 101,
    BRIGHT_GREEN = 102,
    BRIGHT_YELLOW = 103,
    BRIGHT_BLUE = 104,
    BRIGHT_MAGENTA = 105,
    BRIGHT_CYAN = 106,
    BRIGHT_WHITE = 107,
};

fn nice_print(bg_color: BgColor, text_color: TextColor, text: []const u8) void {

    // \x1b[ begin the squence
    // 41 bg color red
    // ; separar
    // 97 text color white
    // m final
    // TEXTO
    // \x1b[0m cerrar y color back to default

    std.debug.print("{s}{d};{d}m{s}{s}m", .{ ascii_opener, @intFromEnum(bg_color), @intFromEnum(text_color), text, ascii_closer });
}

pub fn main() void {

    // Para comprobar que @intFromEnum no es compile-time en este caso
    var bgcolor = BgColor.RED;
    if (std.os.argv.len > 1) {
        bgcolor = BgColor.BLUE;
    }
    //nice_print(BgColor.BG_RED, TextColor.TEXT_BRIGHT_WHITE, "Hola desde zig con color y colores as enum(u8)\n");
    nice_print(bgcolor, TextColor.BRIGHT_WHITE, "Hola desde zig con color y colores as enum(u8)\n");
}
