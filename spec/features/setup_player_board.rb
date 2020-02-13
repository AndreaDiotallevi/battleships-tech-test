require "game", "board", "ship", "cell"

describe "setup player board" do
  let(:game) { Game.new }

  it "a player can start a new game and place 3 ships in a board location, by giving the ship origin coordinate" do
    allow(Object).to receive(:gets).and_return("A1\n", "A2\n", "A3\n")
    expect { game.setup_player_board }.to output("Enter ship origin, size (2, 3 or 4) and direction (r, b, l or t), separated by a comma").to_stdout
    expect { game.setup_player_board }.to output("Enter ship origin, size (2, 3 or 4) and direction (r, b, l or t), separated by a comma").to_stdout
    expect { game.print_player_board }.to output("....\n....\n....\nSS..\n").to_stdout
  end
end
