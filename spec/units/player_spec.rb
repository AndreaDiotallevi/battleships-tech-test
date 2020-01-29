require "player"

describe Player do
  let(:ship) { double(:ship) }
  let(:board) { double(:board, place_ship: [ship]) }
  let(:player) { Player.new(board) }

  describe "#place_ship" do
    it "should return all player board's ships" do
      expect(player.place_ship("A1")).to eq [ship]
    end
  end
end
