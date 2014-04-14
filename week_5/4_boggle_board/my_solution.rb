# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]

@boggle_board = boggle_board

# Part 1: Access multiple elements of a nested array
# Example Method: 

# def create_word(boogle_board, *coords)
#     coords.map { |coord| board[coord.first][coord.last]}.join("") #.join ties all the coords together as a string.
#   end


# Pseudocode
# Create a method, create_word, that takes two arguments: 1) Our nexted array "boogle_board", and 2) coordinates of the chosen dice (use *splat since the amount of coordinates to be given is undefined and may change)
# return a new array using .map that will accept coordinates of each array, and each element in that array, then return all elements joined together as a string (.join(""))

# Initial Solution
def create_word(boogle_board, *coords)
    coords.map { |coord| boogle_board[coord.first][coord.last]}.join("") #.join ties all the coords together as a string.
  end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

def boggle_test(explanation, assertion, result)
	if assertion == result
		return true
	else 
		return false.to_s + ": " + explanation
	end
end

#test to see if we are returning the correct selection from our arrays
test_1 = create_word(boggle_board, [2,1], [1,1], [1,2], [0,3]) 
puts boggle_test("test didn't pass: Expected result is *code*", test_1,"code")

test_2 = create_word(boggle_board, [0,1], [0,2], [1,2])
puts boggle_test("test didn't pass: Expected result is *rad*", test_2,"rad")




# Reflection 

# The *coords is a splat, which seems to indicate that is should expect to accept an undefined number of inputs... like an array! Hence allows you to "access multiple elements of a nested array"
# .map creates a new array containing new values returned by the block (e.g. .map {|item| block} -> new_ary)


#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  
#example
# def get_row(row)
#     # your code here
# end

# get_row(1) #=>  ["i", "o", "d", "t"]


# Pseudocode
#create a global variable @boogle_board for boggle_board, (done above)
#define a method, get_row, that takes an integer as an argument (this integer will be the array position of our intended row within boogle_board, where each array within boogle_board's nested array is considered a row)
#use integer from argument row to return the correct array within boogle_board (i.e., our intended row that we will be returning)

# Initial Solution



def get_row(row)
	@boggle_board[row]
end

print get_row(1)
# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

#test to see that we are returning the correct array, and returning it as an array.
result_for_test_3 = ["i", "o", "d", "t"]
test_3 = get_row(1) #=>  ["i", "o", "d", "t"]

puts boggle_test("you are not returning the correct array.", test_3, result_for_test_3)



# Reflection 
#I am avoiding regex because I couldn't figure out correst escaping with / "whatever" /.
# @global variables are super useful


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 