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

# #!/usr/bin/env ruby
# #
# # roll.rb
# #

# # fix up Fixnum to override ** with our desired d behavior
# class Fixnum
#   def ** (sides)
#     # validation
#     if sides<1
#       raise "Invalid sides value:  '#{sides}', must be a positive Integer"
#     end
#     if self<1
#       raise "Invalid number of rolls:  '#{self}', must be a postitive Integer"
#     end
#     # roll the dice
#      (0..self).to_a.inject{|x,y| x + rand(sides)}+self
#   end
# end

# def generate_expression(arg)

#   arg.
#     gsub(/(^|[^0-9)\s])(\s*d)/, '\11d').
#     gsub(/d%/,'d100 ').
#     gsub(/d/, "**")

# end

# def roll(string)
#   eval(generate_expression(string))
# end

# if __FILE__ == $0

#   args = ARGV.dup
#   results = []

#   if !args.first.include?('d')
#     die_result = roll("1d20")
#     results << "#{die_result+args.first.to_i} (#{die_result})"
#     args.shift
#   end

#   if args.size > 0
#     if args.size == 1 || args.last.include?('d')
#       number_of_times = 1
#       expressions = args
#     else
#       expressions = args[0..-2]
#       number_of_times = args.last.to_i
#     end

#     number_of_times.times do
#       puts expressions.map { |e| eval(generate_expression(e))}.join(" ")
#     end

#   else
#     puts results.join(" ")
#   end

# end
