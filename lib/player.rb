class Player
  def initialize(board = Board.new)
    @board = board
  end

  def choose_ship(origin, size, direction)
    @board.place_ship(origin, size, direction)
  end

  def current_board
    @board.calculate_board
  end
end
