module Roly
  module Poly
    class D20
      def self.roll(modifier=0)
        die_result = rand(20)+1
        "#{die_result+modifier} (#{die_result})"
      end
    end
  end
end
