library;

abi Game {
    /// Starts a new game.
    ///
    /// # Arguments
    ///
    /// * `player_one`: the first player to make a move.
    /// * `player_two`: the second player to make a move.
    ///
    /// # Reverts
    ///
    /// * When there is a game playing.
    #[storage(read, write)]
    fn new_game(player_one: Identity, player_two: Identity);

    /// Allows a player to make a move at a `position`.
    ///
    /// It also determines if the game has been won or drawn.
    ///
    /// # Arguments
    ///
    /// * `position`: the position where the player wants to move.
    ///
    /// # Reverts
    ///
    /// * When the game has ended.
    /// * When the wrong player is trying to make a move.
    /// * When a player makes a move out of bounds.
    /// * When a player tries to make a move in an occupied cell.
    #[storage(read, write)]
    fn make_move(position: u64);
}
