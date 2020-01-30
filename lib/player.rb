class Player
  def initialize(board = Board.new)
    @board = board
  end

  def place_ship(origin, size)
    @board.place_ship(origin, size)
  end

  def current_board
    @board.calculate_board
  end
end
