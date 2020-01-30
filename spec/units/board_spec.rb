require "board"

describe Board do
  let(:ship) { double(:ship) }
  let(:ship_class) { double(:ship_class, new: ship) }
  let(:board) { Board.new(ship_class) }

  describe "#calculate_board" do
    it "should return an empty board" do
      expect(board.calculate_board).to eq [[".", ".", ".", "."]] * 4
    end
  end

  describe "#place_ship" do
    it "should return all board's ships" do
      Board::MATRIX.each do |row|
        row.each do |coordinate|
          if ["A1", "B1"].include? coordinate
            allow(ship).to receive(:includes?).with(coordinate).and_return true
          else
            allow(ship).to receive(:includes?).with(coordinate).and_return false
          end
        end
      end
      expect(board.place_ship("A1", 2)).to eq [ship]
      expect(board.calculate_board).to eq [[".", ".", ".", "."]] * 3 + [["S", "S", ".", "."]]
    end
  end
end
