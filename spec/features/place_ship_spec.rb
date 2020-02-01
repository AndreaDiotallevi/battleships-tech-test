require "game"
require "board"
require "ship"
require "cell"

describe "place ship" do
  let(:game) { Game.new }

  it "a player can start a new game and place a ship in a board location, inputting origin, size (from an available range) and direction" do
    allow_any_instance_of(Object).to receive(:gets).and_return("A1\n", "2\n", "r\n")
    expect { game.setup_player_board }.to output("Enter the ship origin coordinate\nEnter the ship size (either 2, 3 or 4)\nEnter the ship direction(either 'r', 'b', 'l' ot 't'\n").to_stdout
    expect { game.print_player_board }.to output("....\n....\n....\nSS..\n").to_stdout
  end
end
