# [Week 4 Home](./)

# # U2.W4: Accountability Group Creator!

# ## Learning Objectives
# - Break down problems into implementable pseudocode 
# - Differentiate between and produce destructive and non-destructive methods
# - Automate repetitive tasks using loops
# - Use strings, integers, arrays, and/or hashes

# ## Background
# By now you should be feeling comfortable with the procedure we would like you to embrace and follow when working through challenges. You may feel like it's overkill now, but you will greatly appreciate already having set good habits when you arrive at DBC and begin bigger projects!

# In this challenge, you are going to make a method that takes an array of names (You'll want to get the list from your Cohort page in Socrates) and outputs a list of accountability groups for three different units. You should try to get everyone into an accountability group of 4, but it's your decision how to deal with cohorts not easily divisible by four. 

# You will also not have any tests for this challenge, so it's your job to create them. Read the document on Writing [Driver Test Code](../references/driver_code.md) code with Ruby. You should write tests with expectations that return `true` if the code is working and `false` if it is not.

# You will want to consider:
# - Are there built-in methods to do this in Ruby?
# - Will you try to avoid putting the same people together more than once?
# - If I run this program three times in a row, will the program give me three different outputs? Is that good or bad?
# - Should it remember past outputs or not?


## Directions
 
#1. Write [Driver Test Code](../references/driver_code.md)
#2. [Pseudocode](../references/pseudocode.md)
#High Level Breakdown: 
# Create a method that checks for a "homogeneity" between groups that are created in rounds 1, 2, & 3.
# Create a loop that creates groups of 3, 4, or 5 people depending on the size of an array input. [done]
# Determine a way to randomly select from an array to create unique groups [done - it's .shuffle]



#Naming: Create a method with an appropriate name for sorting a large group into many small groups that takes an array input. e.g. def group_sorter(names)

#Input: Create an array, [names], that contains the names of all the DBC Lizard Cohort Members. This will be used for the method group_sorter.

#Worker Method: Create a method called "produce_team", that will check [names].length, and if > 0 will return four objects

#Output Vessel: Create an empty array called "sorted_teams_round 1", which method "produce_team" will push arrays to.

#Step 1: Determining Unit 1 Groups
#If loops & sorting: 
#Check [names].length, and expect that array size to determine which of many paths to take for method output.
##If [names].length <= 4, output one array with all objects from [names] to [sorted_teams_round 1]. 
##If [names].length % 4 = .25, push one array with 5 objects from [names] to [sorted_teams_round 1], then runs method "produce team"
##If [names].length % 4 = .5, push two arrays with 3 objects each from [names] to [sorted_teams_round 1], then runs method "produce team"
##If [names].length % 4 = .75, push an array of 3 objects from [names] to [sorted_teams_round 1], then runs method "produce team"

#Step 2: Determining Unit 2 Groups
#Input: create an array called [names2] that is a clone of [sorted_teams_round 1].
#create an array [sorted_teams_round 2] which a method *similar* to "produce_team" will push arrays to.
#randomize [names2]

#run the if-loops from step "Determining Unit 1 Groups" (remember to rename them with appropriate naming for input and output - intended output is [sorted_teams_round 2] /// damn, we're going to have to be smart about this naming thing so I don't end up re-writing a whole bunch. /// known problem.

#create "homogeneity" test to make sure that teams are sufficiently different from round to round.
#if [sorted_teams_round 2] is sufficiently non-homogenous from [sorted_teams_round 1], [sorted_teams_round 2] is accepted as valid so continue to next step 3, if it is not accepted, repeat step 2.

#Step 3: Determining Unit 3 Groups
#Do essentially the same as step 2, except test homogeneity of [sorted_teams_round 3] against [sorted_teams_round 1] & [sorted_teams_round 2]. //// reflection: I should do array.clone.randomize.test_for_homogeneity before getting started with all this step 1, 2, 3 prattle. It'll save code because then we know we're working with valid inputs and they'll push out from [0] ... [n] anyways. 


#Group_Sorter Output: 
#print "Unit 1 Groups: " + [sorted_teams_round 1]
#print new line ("\n")
#print "Unit 2 Groups: " + [sorted_teams_round 2]
#print new line ("\n")
#print "Unit 3 Groups: " + [sorted_teams_round 3]



#3. [Initial Solution](../references/initial_solution.md)
# lizard_cohort = ["margaret"]
lizard_cohort = ["eoin", "lisa", "frank", "frederick", "mike", "tokyo", "poodle", "francesca", "Alfonzo", "prevaricate", "postulate", "tom", "dick", "harry", "mary", "beth"]
# lizard_cohort = ["lisa", "frank", "frederick", "mike", "tokyo", "poodle", "francesca", "Alfonzo", "prevaricate", "postulate", "tom", "dick", "harry"]


# past_groups = [] #we will add to this array and check against it to make sure that group allocation for each unit is unique

# working_array = lizard_cohort.clone
# #ensure woring_array set is unique
# 	until past_groups.include? working_array == false
# 		working_array.shuffle!
# 	end

# unless past_groups.include?(working group) do
#   ...
# end

# #improve our array of used groups, so we can make sure that group allocation for each unit is unique.
# 	past_groups << working_array.clone

# def create_teams_of_4(unallocated_cohort)
# until unallocated_cohort.length == 0
# 			team = unallocated_cohort.shift(4)
# 			team = team.sort
# 			team_allocations << team
# 		end
# end

def group_allocator(lizard_cohort)
	

unallocated_cohort = lizard_cohort.clone.shuffle
	team_allocations = []

	if unallocated_cohort.length <= 3
		team_allocations << unallocated_cohort.shift(unallocated_cohort.length)

	elsif unallocated_cohort.length % 4 == 0
		until unallocated_cohort.length == 0
			team = unallocated_cohort.shift(4)
			team = team.sort
			team_allocations << team
		end
	
	elsif unallocated_cohort.length % 4 == 1
		team_allocations << unallocated_cohort.shift(5)
		until unallocated_cohort.length == 0
			team = unallocated_cohort.shift(4)
			team = team.sort
			team_allocations << team
		end

	elsif unallocated_cohort.length % 4 == 2
		team_allocations << unallocated_cohort.shift(3)
		team_allocations << unallocated_cohort.shift(3)
		until unallocated_cohort.length == 0
			team = unallocated_cohort.shift(4)
			team = team.sort
			team_allocations << team
		end

	elsif unallocated_cohort.length % 4 == 3
		team_allocations << unallocated_cohort.shift(3)
		until unallocated_cohort.length == 0
			team = unallocated_cohort.shift(4)
			team = team.sort
			team_allocations << team
		end

	end

	return team_allocations
end

unit1_group_allocations = group_allocator(lizard_cohort)
unit2_group_allocations = group_allocator(lizard_cohort)
unit3_group_allocations = group_allocator(lizard_cohort)

puts "Unit 1 Group Allocations are: " + unit1_group_allocations.to_s
puts "Unit 2 Group Allocations are: " + unit2_group_allocations.to_s
puts "Unit 3 Group Allocations are: " + unit3_group_allocations.to_s

group_allocator(lizard_cohort)

#Driver Test Code

def test_answer(testing_explanation, assertion, result)

	if assertion == result
		puts "PASS: #{assertion} equals #{testing_explanation}"
	else
		puts "FAIL: #{assertion} doesnt equal #{testing_explanation}"
	end
end

input_length_of_0 = []
input_length_of_1 = ["eoin"]
input_length_of_2 = ["eoin", "lisa"]
input_length_of_3 = ["eoin", "lisa", "frank"]
input_length_of_4 = ["eoin", "lisa", "frank", "frederick"]
input_length_of_5 = ["eoin", "lisa", "frank", "frederick", "mike"]
input_length_of_6 = ["eoin", "lisa", "frank", "frederick", "mike", "tokyo"]
input_length_of_7 = ["eoin", "lisa", "frank", "frederick", "mike", "tokyo", "poodle"]
input_length_of_8 = ["eoin", "lisa", "frank", "frederick", "mike", "tokyo", "poodle", "francesca"]
input_length_of_9 = ["eoin", "lisa", "frank", "frederick", "mike", "tokyo", "poodle", "francesca", "jono"]
input_length_of_10 = ["eoin", "lisa", "frank", "frederick", "mike", "tokyo", "poodle", "francesca", "jono", "whateverguy"]

#input = 0
result = group_allocator(input_length_of_0)
test_answer('Unit 1 first group is 0 items long', result[0].size, 0)

#input <4
result = group_allocator(input_length_of_1)
test_answer('Unit 1 first group is 1 items long', result[0].size, 1)

result = group_allocator(input_length_of_2)
test_answer('Unit 1 first group is 2 items long', result[0].size, 2)

result = group_allocator(input_length_of_3)
test_answer('Unit 1 first group is 3 items long', result[0].size, 3)

#input %4 = 0
result = group_allocator(input_length_of_4)
test_answer('Unit 1 second group is 4 items long', result[0].size, 4)

result = group_allocator(input_length_of_8)
test_answer('Unit 1 second group is 4 items long', result[1].size, 4)

#input %4 = 1
result = group_allocator(input_length_of_5)
test_answer('Unit 1 first group is 5 items long', result[0].size, 5)

#input %4 = 2
result = group_allocator(input_length_of_6)
test_answer('Unit 1 first group is 3 items long', result[0].size, 3)

result = group_allocator(input_length_of_10)
test_answer('Unit 1 second group is 3 items long', result[1].size, 3)

#input %4 = 3
result = group_allocator(input_length_of_7)
test_answer('Unit 1 second group is 3 items long', result[0].size, 3)
test_answer('Unit 1 second group is 4 items long', result[1].size, 4)


# 4. [Refactored Solution](../references/refactoring.md)


# 5. [Reflect](../references/reflection_guidelines.md)
# Parts of the strategy that worked included removing groups non-divisible by 4, then having a standard 4 << dump.
# I ultimately decided that a homogeniety test wasn't needed, although having the team.sort function allows it to be implemented somewhat easily (create an archive or past teams to check against)
# Testing took a while to sink in. 1. explain what the test does 2. assertion 3. result. if assertion != result, you have a problem, and you have to write a method that will tell you as much. (Went through testing with Jonothan Yankovich)
# .shift was new
# All my extra clones may have been unnecessary, but ultimately were worth it.
# Found myself changing variable names multiple times until the code could be read by an observer
# I was planning to create some crazy complicated hash-based system to check if people had already worked togehter in teams. I ultimately didn't go down that path for a different reason, but I was definitely dodging having to do it as I don't have my --hash muscle-- built yet.
# I'm pretty confident I passed the learning objectives
# I enjoyed all of this challenge, especially where I had to randomize results - that was fun.
# I think they're all gone now, but I do like using double negatives in code; it's a rhetorical style of speaking, which is probably hard to read (I was told as much) since the logic is... unsimple.
# Writing the tests was tedious once defining the method was out of the way.

# 6. Sync your changes (push your solution) to Github
# 7. [Review](../references/review.md)

