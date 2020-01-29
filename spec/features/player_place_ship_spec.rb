require "player"
require "board"
require "ship"

describe "player place ship" do
  let(:player) { Player.new }

  it "a player can place a ship in a board location" do
    expect(player.place_ship("A1").length).to eq 1
  end
end
