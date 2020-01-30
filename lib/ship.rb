class Ship
  def initialize(coordinates, cell_class = Cell)
    @cells = []
    coordinates.each do |coordinate|
      @cells << cell_class.new(coordinate)
    end
  end

  def includes?(coordinate)
    @cells.any? { |cell| cell.coordinate == coordinate }
  end
end
