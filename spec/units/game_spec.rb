require "game"

describe Game do
  let(:ship) { double(:ship) }
  let(:player_board) { double(:board, place_ship: [ship]) }
  let(:game) { Game.new(player_board) }

  describe "#print_player_board" do
    it "should print an empty board" do
      allow(player_board).to receive(:calculate_board).and_return [[".", ".", ".", "."]] * 4
      expect { game.print_player_board }.to output("....\n....\n....\n....\n").to_stdout
    end
  end

  describe "#setup_player_board" do
    it "should return all board ships" do
      allow_any_instance_of(Object).to receive(:gets).and_return("A1\n", "2\n", "r\n")
      expect(game.setup_player_board).to eq [ship]
    end
  end
end
