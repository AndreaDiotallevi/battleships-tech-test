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
    puts "Please enter the origin location of the ship"
    ship_origin = gets.chomp
    @player.place_ship(ship_origin)
  end
end
