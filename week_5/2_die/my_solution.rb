# U2.W5: Die Class 2: Arbitrary Symbols

# Answer from Die Class 1
#  class Die

#   def initialize(sides)
#   	puts "this runs when I call .new"
#     @sides = sides
#     if @sides <= 0
#         raise ArgumentError.new("Only positive numbers are allowed")
#     elsif @sides % 1 != 0 
#         raise ArgumentError.new("Only intigers are allowed - get yer scurvey lovin floats outta here!")
#     elsif @sides.class.to_s == "String"
#         raise ArgumentError.new("Only intigers are allowed - no strings")
#     end
#   end
  
#   def sides
#     puts "this will only print if this runs when I call sides"
#     @sides
#   end
  
#   def roll
#   	puts "this is what roll does"
#     (1..@sides).to_a.sample
#   end
# end



# I worked on this challenge [by myself, with: Alyssa Ravasio ].

# 2. Pseudocode

# Input: An array of strings
# Output: A random elemtent from the input strings
# Steps: 
# Delete all Argument Errors (they were appropriate for numbers, but aren't for strings. Also, they're not written to test against arrays instead of single arguments)
# Change input so that it accepts an array instead of a single argument
# Write if-statements that check to see:
# a) if the input is empty
# b) if an array is input
# c) Check the array to see if inputs are strings, and write appropriate ArgumentErrors that explain that protest is not the case. : )
# write a new method for defining sides. Either a Dreidel or Boggle dice, (TBD)
# re-write roll, accounting for the change in the nature of the sides (see previous line in pseudocode)




# 3. Initial Solution
 class Die

  def initialize(sides)
  	puts "this runs when I call .new"
    @sides = sides
    if @sides.length == 0
        raise ArgumentError.new("OK, let's be serious here, die don't exist outside of dimensions, even coins have two sides - your array must contain objects")
    elsif @sides.class.to_s != "Array"
        raise ArgumentError.new("sides must come in the form of an array")
    elsif 
    	@sides.each do |side| 
    		if side.class.to_s != "String"
    			raise ArgumentError.new("input for each side has to be a string") 
			end
        end
    end
  end
  
  def sides
  	"this is what sides does"
    @sides
  end
  
  def roll
  	puts "this is what roll does"
    @sides.sample
  end
end

p new_dice = Die.new(["turtle", "kat", "Sparrow"])
p new_dice.sides
p new_dice.roll

# p no_dice = Die.new([])
p no_dice = Die.new("panopoly")
p no_dice = Die.new([5,2,4])

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
# A class is an object with attributes that we are able to define and call. 
# @is pretty handy, it allows us to call a universal argument outside of any method.
