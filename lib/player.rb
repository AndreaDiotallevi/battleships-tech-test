class Player
  def initialize(board = Board.new)
    @board = board
  end

  def place_ship(location)
    @board.place_ship(location)
  end
end
