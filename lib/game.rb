class Game
  # SHIP_SIZES = [2, 3, 4]

  def initialize(player_board = Board.new)
    @player_board = player_board
  end

  def setup_player_board
    3.times do
      puts "Enter ship origin, size (2, 3 or 4) and direction (r, b, l or t), separated by a comma"
      origin, size, direction = gets.chomp.split(",")
      @player_board.place_ship(origin, size = 2, direction = "r")
    end
  end

  # def print_player_board
  #   @player_board.calculate_board.each do |row|
  #     puts row.join
  #   end
  # end
end
