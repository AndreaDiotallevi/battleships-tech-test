require "game"
require "player"
require "board"
require "ship"
require "cell"

describe "place ship" do
  let(:game) { Game.new }

  it "a player can start a new game and place a ship in a board location, inputting origin and size (from an available range)" do
    allow_any_instance_of(Object).to receive(:gets).and_return("A1,2\n")
    expect { game.setup_player_board }.to output("Please enter the ship's origin and size (either 2, 3 or 4) separated by a comma\n").to_stdout
    expect { game.print_player_board }.to output("....\n....\n....\nSS..\n").to_stdout
  end
end
