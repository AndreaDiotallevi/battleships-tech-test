class Game
  def initialize(player = Player.new)
    @player = player
  end

  def print_player_board
    @player.current_board.each do |row|
      puts row.join
    end
  end

  def setup_player_board
    puts "Please enter the ship's origin and size (either 2, 3 or 4) separated by a comma"
    ship_origin, ship_size = gets.chomp.split(",")
    @player.place_ship(ship_origin, ship_size.to_i)
  end
end
