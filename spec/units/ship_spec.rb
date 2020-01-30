require "ship"

describe Ship do
  let(:cell) { double(:cell, coordinate: "A1") }
  let(:cell_class) { double(:cell_class, new: cell) }
  let(:ship) { Ship.new(["A1"], cell_class) }

  describe "#includes?" do
    it "should return false if the ship doesn't cover the given coordinate" do
      expect(ship.includes?("A2")).to eq false
    end

    it "should return true if the ship covers the given coordinate" do
      expect(ship.includes?("A1")).to eq true
    end
  end
end
