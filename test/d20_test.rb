require 'rubygems'
require 'minitest/autorun'
require 'roly-poly/d20'

describe Roly::Poly::D20 do
  describe "#roll" do
    describe "with no arguments" do
      it "returns a number between 1 and 20, converted to a string" do
        20.times do
          roll = Roly::Poly::D20.roll
          roll.must_be_instance_of String
          assert(roll.to_i >= 1 && roll.to_i <= 20,
                 "#{roll} is not between 1 and 20")
        end
      end
    end

    describe "with a numeric argument" do
      it "returns a d20 roll modified by the number, as a string" do
        20.times do
          roll = Roly::Poly::D20.roll(4)
          roll.must_be_instance_of String
          assert(roll.to_i >= 5 && roll.to_i <= 24,
                 "#{roll} is not between 5 and 24")
        end
      end

      it "prints out the unmodified die roll along with the result" do
        roll = Roly::Poly::D20.roll(4)
        matches = roll.match(/(\d+) \((\d+)\)/)
        matches.wont_be_nil
        matches[1].to_i.must_equal(matches[2].to_i+4)
      end

    end

  end
end
