require "game"

describe Game do
  let(:ship) { double(:ship) }
  let(:player_board) { double(:board, place_ship: [ship]) }
  let(:game) { Game.new(player_board) }

  describe "#setup_player_board" do
    it "should return all ships in the board" do
      allow_any_instance_of(Object).to receive(:gets).and_return("A1\n", "A2\n", "A3\n")
      expect(game.setup_player_board).to eq [ship, ship, ship]
    end
  end

  # describe "#print_player_board" do
  #   it "should print an empty board" do
  #     allow(player_board).to receive(:calculate_board).and_return [[".", ".", ".", "."]] * 4
  #     expect { game.print_player_board }.to output("....\n....\n....\n....\n").to_stdout
  #   end
  # end
end
