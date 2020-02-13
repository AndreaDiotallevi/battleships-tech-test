class Board
  COORDINATES = [["A4", "B4", "C4", "D4"],
                 ["A3", "B3", "C3", "D3"],
                 ["A2", "B2", "C2", "D2"],
                 ["A1", "B1", "C1", "D1"]]

  def initialize(ship_class = Ship)
    @ship_class = ship_class
    @ships = []
    @hits = []
  end

  def place_ship(origin, size, direction)
    @ships << @ship_class.new(origin, size, direction)
    calculate_board
  end

  def calculate_board
    COORDINATES.map do |row|
      row.map do |coordinate|
        render_cell(coordinate)
        # empty_cell?(coordinate) ? "." : "S"
      end
    end
  end

  private

  def render_cell(coordinate)
    "."
  end

  # def calculate_ship_coordinates(origin, size, direction)
  #   coordinates = [origin]
  #   (size - 1).times do
  #     coordinates << "B1"
  #   end
  #   coordinates
  # end

  # def empty_cell?(coordinate)
  #   @ships.all? { |ship| !ship.includes?(coordinate) }
  # end
end
