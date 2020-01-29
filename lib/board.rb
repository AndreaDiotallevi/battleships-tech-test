class Board
  def initialize(ship_class = Ship)
    @ships = []
    @ship_class = ship_class
  end

  def place_ship(location)
    @ships << @ship_class.new(location)
  end
end
