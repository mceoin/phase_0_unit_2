# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: A "guess", that will compare against a defined answer
# Output: "false" & :high/:low for when guess != answer, "true" & :correct for when guess == answer
# Steps:


#Create a variable for our guessing game ("game") that will initialize a new instance of our class GuessingGame.
#Define an method "guess" that will take a number as an argument.
#Create an instance method "solved" (aka GuessingGame#solved) which contains either a hash with responses (see next line)
#hash should have a key that compares guess(argument) against argument answer, and uses < , ==, > to allocate pair responses (these pair responses will be printed). (If loops seem like a good way to go on this, but I haven't done hashes in a while so want to use them today)
#create some raiseArgument clauses for argument input != integer.
#Create a prompt that says "what's your guess", and takes that guess as the argument in guess(argument) which will be compared against answer. (So game member is putting in "5" instead of "guess(5)")
#Call guess on game and return appropriate responses.
#Make sure user keeps inputting responses until game is solved.


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
  	@answer = answer
  	
  	if @sides % 1 != 0
  		raise ArgumentError.new("We're guessing numbers here, so we only accept numbers here")
  	end
    # Your initialization code goes here
  end

  def guess(number)
  	@number = number

  	if @number %1 != 0 
  		raise ArgumentError.new("We're guessing numbers here, so we only accept numbers here")
  	elsif game.solved? == true
  		response = :correct
  	elsif @answer > @number
  		response = :low
  	else @answer < @number
  		response = :high
    end

    {:low => puts "too low, try again", :high => puts "too high, try again", :correct => puts "Larry Emdur would be proud - you're practically a genius... Your answer is correct"}


  end
  
  def solved(@answer, @number) #boolean
  	puts "this is what solved does"
    if @answer == @number
    	return true
    else 
    	return false
    end
  end
  
  # Make sure you define the other required methods, too
end

game = GuessingGame.new(10)

game.solved?   # => false

game.guess(5)  # => :low
game.guess(20) # => :high
game.solved?   # => false

game.guess(10) # => :correct
game.solved?   # => true


# 4. Refactored Solution

p new_dice = Die.new(["turtle", "kat", "Sparrow"])
p new_dice.sides
p new_dice.roll

# p no_dice = Die.new([])
p no_dice = Die.new("panopoly")
p no_dice = Die.new([5,2,4])





# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
