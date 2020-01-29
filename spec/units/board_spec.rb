require "board"

describe Board do
  let(:ship) { double(:ship) }
  let(:ship_class) { double(:ship_class, new: ship) }
  let(:board) { Board.new(ship_class) }

  describe "#place_ship" do
    it "should return all player board's ships" do
      expect(board.place_ship("A1")).to eq [ship]
    end
  end
end
