[Week 4 Home](./)

# U2.W4: Accountability Group Creator!

## Learning Objectives
- Break down problems into implementable pseudocode 
- Differentiate between and produce destructive and non-destructive methods
- Automate repetitive tasks using loops
- Use strings, integers, arrays, and/or hashes

## Background
By now you should be feeling comfortable with the procedure we would like you to embrace and follow when working through challenges. You may feel like it's overkill now, but you will greatly appreciate already having set good habits when you arrive at DBC and begin bigger projects!

In this challenge, you are going to make a method that takes an array of names (You'll want to get the list from your Cohort page in Socrates) and outputs a list of accountability groups for three different units. You should try to get everyone into an accountability group of 4, but it's your decision how to deal with cohorts not easily divisible by four. 

You will also not have any tests for this challenge, so it's your job to create them. Read the document on Writing [Driver Test Code](../references/driver_code.md) code with Ruby. You should write tests with expectations that return `true` if the code is working and `false` if it is not.

You will want to consider:
- Are there built-in methods to do this in Ruby?
- Will you try to avoid putting the same people together more than once?
- If I run this program three times in a row, will the program give me three different outputs? Is that good or bad?
- Should it remember past outputs or not?


## Directions
 
#1. Write [Driver Test Code](../references/driver_code.md)
#2. [Pseudocode](../references/pseudocode.md)
#High Level Breakdown: 
# Create a method that checks for a "homogeneity" between groups that are created in rounds 1, 2, & 3.
# Create a loop that creates groups of 3, 4, or 5 people depending on the size of an array input.
# Determine a way to randomly select from an array to create unique groups
# Output 3 arrays, split in to arrays of roughly 3 people.


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
def create_accountability_groups(array)




4. [Refactored Solution](../references/refactoring.md)
5. [Reflect](../references/reflection_guidelines.md)
6. Sync your changes (push your solution) to Github
7. [Review](../references/review.md)

