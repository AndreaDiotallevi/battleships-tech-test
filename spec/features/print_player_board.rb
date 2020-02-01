require "game"
require "board"
require "ship"
require "cell"

describe "print player board" do
  let(:game) { Game.new }

  it "a player can start a new game and print his board" do
    expect { game.print_player_board }.to output("....\n....\n....\n....\n").to_stdout
  end
end
