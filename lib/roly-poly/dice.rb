module Roly
  module Poly
    class Dice
      def initialize(expression)
        @number, @sides, @bonus = expression.
          to_s.
          split("d").
          map{ |e| e.split("+")}.
          flatten.
          map { |c| c.to_i}
      end

      def roll
        if @sides
          result = 0
          @number.times do
            result += rand(@sides) + 1 + @bonus
          end
          result
        else
          @number
        end
      end
    end
  end
end
