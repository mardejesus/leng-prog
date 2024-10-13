#[derive(Debug)]
pub struct ChessPosition(i32, i32);

#[derive(Debug)]
pub struct Queen {
    position: ChessPosition
}

impl ChessPosition {
    pub fn new(rank: i32, file: i32) -> Option<Self> {
        return if rank >= 0 && rank < 8 && file >= 0 && file < 8 { // chequea si está dentro de los límites del tablero
            Some(ChessPosition(rank, file))
        } else {
            None
        }
    }
}

impl Queen {
    pub fn new(position: ChessPosition) -> Self {
        return Queen {position};
    }

    pub fn can_attack(&self, other: &Queen) -> bool {
        return (self.position.0-other.position.0).abs() == (self.position.1-other.position.1).abs() ||
            self.position.0 == other.position.0 ||
            self.position.1 == other.position.1;
}
}
