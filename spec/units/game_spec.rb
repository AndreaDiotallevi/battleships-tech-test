require "game"

describe Game do
  let(:ship) { double(:ship) }
  let(:player) { double(:player) }
  let(:game) { Game.new(player) }

  describe "#print_player_board" do
    it "should print an empty player's board" do
      allow(player).to receive(:current_board).and_return [[".", ".", ".", "."]] * 4
      expect { game.print_player_board }.to output("....\n....\n....\n....\n").to_stdout
    end
  end

  describe "#setup_player_board" do
    it "should return all player board's ships" do
      allow(player).to receive(:place_ship).and_return [ship]
      allow(player).to receive(:current_board).and_return [[".", ".", ".", "."]] * 3 + [["S", ".", ".", "."]]
      expect { game.print_player_board }.to output("....\n....\n....\nS...\n").to_stdout
    end
  end
end
