require "player"

describe Player do
  let(:ship) { double(:ship) }
  let(:board) { double(:board, place_ship: [ship]) }
  let(:player) { Player.new(board) }

  describe "#choose_ship" do
    it "should return all board's ships" do
      expect(player.choose_ship("A1", 2, "r")).to eq [ship]
    end
  end

  describe "#current_board" do
    it "should return the current board" do
      allow(board).to receive(:calculate_board).and_return [[".", ".", ".", "."]] * 4
      expect(player.current_board).to eq [[".", ".", ".", "."]] * 4
    end
  end
end
