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
    @player.choose_ship(player_ship_origin, player_ship_size, player_ship_direction)
  end

  private

  def player_ship_origin
    puts "Enter the ship origin coordinate"
    gets.chomp
  end

  def player_ship_size
    puts "Enter the ship size (either 2, 3 or 4)"
    gets.chomp.to_i
  end

  def player_ship_direction
    puts "Enter the ship direction"
    gets.chomp
  end
end
