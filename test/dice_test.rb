require 'test_helper'

describe Roly::Poly::Dice do
  describe "initialized with an integer" do
    it "returns that integer" do
      Roly::Poly::Dice.new(2).roll.must_equal 2
      Roly::Poly::Dice.new("4").roll.must_equal 4
      Roly::Poly::Dice.new(10).roll.must_equal 10
    end
  end

  describe "initialized with 1d6" do
    before do
      @dice = Roly::Poly::Dice.new("1d6")
    end

    it "returns a random spread of numbers between 1 and 6" do
      rolls = (1..6).to_a.map { @dice.roll }
      rolls.uniq.size.wont_equal 1
      assert(rolls.all?{ |r| r >= 1 && r <= 6})
    end

  end

  describe "initialized with 3d8" do
    before do
      @dice = Roly::Poly::Dice.new("3d8")
    end

    it "returns a random spread of numbers between 3 and 24" do
      rolls = (1..21).to_a.map { @dice.roll }
      rolls.uniq.size.wont_equal 1
      assert(rolls.all?{ |r| r >= 3 && r <= 24})
    end

  end

  describe "initialized with 1d6+12" do
    before do
      @dice = Roly::Poly::Dice.new("1d6+12")
    end

    it "returns a random spread of numbers between 13 and 18" do
      rolls = (1..6).to_a.map { @dice.roll }
      rolls.uniq.size.wont_equal 1
      assert(rolls.all?{ |r| r >= 13 && r <= 18})
    end

  end
end
