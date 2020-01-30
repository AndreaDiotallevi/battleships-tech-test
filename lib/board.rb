class Board
  MATRIX = [["A4", "B4", "C4", "D4"],
            ["A3", "B3", "C3", "D3"],
            ["A2", "B2", "C2", "D2"],
            ["A1", "B1", "C1", "D1"]]

  def initialize(ship_class = Ship)
    @ships = []
    @ship_class = ship_class
  end

  def place_ship(origin)
    @ships << @ship_class.new([origin])
  end

  def calculate_board
    MATRIX.map do |row|
      row.map do |coordinate|
        empty_cell?(coordinate) ? "." : "S"
      end
    end
  end

  private

  def empty_cell?(coordinate)
    @ships.all? { |ship| !ship.includes?(coordinate) }
  end
end
