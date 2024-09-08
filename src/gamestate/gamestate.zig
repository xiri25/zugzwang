const pieces = @import("pieces.zig");

pub const GameState = struct {
    chessboard: [8][8]pieces.Pieces = undefined,

    pub fn CreateGame(self: *GameState) void {
        self.chessboard[0][0] = pieces.Pieces.BLACK_ROOK;
        self.chessboard[0][1] = pieces.Pieces.BLACK_KNIGHT;
        self.chessboard[0][2] = pieces.Pieces.BLACK_BISHOP;
        self.chessboard[0][3] = pieces.Pieces.BLACK_QUEEN;
        self.chessboard[0][4] = pieces.Pieces.BLACK_KING;
        self.chessboard[0][5] = pieces.Pieces.BLACK_BISHOP;
        self.chessboard[0][6] = pieces.Pieces.BLACK_KNIGHT;
        self.chessboard[0][7] = pieces.Pieces.BLACK_ROOK;

        for (0..8) |i| {
            self.chessboard[1][i] = pieces.Pieces.BLACK_PAWN;
        }

        for (2..6) |i| {
            for (0..8) |j| {
                self.chessboard[i][j] = pieces.Pieces.VOID;
            }
        }

        for (0..8) |i| {
            self.chessboard[6][i] = pieces.Pieces.WHITE_PAWN;
        }

        self.chessboard[7][0] = pieces.Pieces.WHITE_ROOK;
        self.chessboard[7][1] = pieces.Pieces.WHITE_KNIGHT;
        self.chessboard[7][2] = pieces.Pieces.WHITE_BISHOP;
        self.chessboard[7][3] = pieces.Pieces.WHITE_QUEEN;
        self.chessboard[7][4] = pieces.Pieces.WHITE_KING;
        self.chessboard[7][5] = pieces.Pieces.WHITE_BISHOP;
        self.chessboard[7][6] = pieces.Pieces.WHITE_KNIGHT;
        self.chessboard[7][7] = pieces.Pieces.WHITE_ROOK;
    }
};
