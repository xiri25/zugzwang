pub const Pieces = enum(u8) {
    WHITE_PAWN,
    WHITE_ROOK,
    WHITE_KNIGHT,
    WHITE_BISHOP,
    WHITE_QUEEN,
    WHITE_KING,
    BLACK_PAWN,
    BLACK_ROOK,
    BLACK_KNIGHT,
    BLACK_BISHOP,
    BLACK_QUEEN,
    BLACK_KING,
    VOID,
};

pub fn PieceEnumToString(piece: Pieces) []const u8 {
    switch (piece) {
        Pieces.WHITE_PAWN => {
            return "P";
        },
        Pieces.WHITE_ROOK => {
            return "R";
        },
        Pieces.WHITE_KNIGHT => {
            return "N";
        },
        Pieces.WHITE_BISHOP => {
            return "B";
        },
        Pieces.WHITE_QUEEN => {
            return "Q";
        },
        Pieces.WHITE_KING => {
            return "K";
        },
        Pieces.BLACK_PAWN => {
            return "p";
        },
        Pieces.BLACK_ROOK => {
            return "r";
        },
        Pieces.BLACK_KNIGHT => {
            return "n";
        },
        Pieces.BLACK_BISHOP => {
            return "b";
        },
        Pieces.BLACK_QUEEN => {
            return "q";
        },
        Pieces.BLACK_KING => {
            return "k";
        },
        Pieces.VOID => {
            return " ";
        },
    }
}
