require "game"
require "player"
require "board"
require "ship"
require "cell"

describe "player place ship" do
  let(:game) { Game.new }

  it "a player can start a new game and place a ship in a board location" do
    allow_any_instance_of(Object).to receive(:gets).and_return("A1")
    expect { game.setup_player_board }.to output("Please enter the origin location of the ship\n").to_stdout
    expect { game.print_player_board }.to output("....\n....\n....\nS...\n").to_stdout
  end
end
