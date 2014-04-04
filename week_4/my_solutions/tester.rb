def test_answer(testing_explanation, assertion, result)

	if assertion == result
		puts "PASS: #{assertion} equals #{testing_explanation}"
	else
		puts "FAIL: #{assertion} doesnt equal #{testing_explanation}"
	end

end

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





#input %4 = 1
result = group_allocator(input_length_of_5)
test_answer('Unit 1 first group is 5 items long', result[0].size, 5)

result = group_allocator(input_length_of_8)
test_answer('Unit 1 second group is 4 items long', result[0].size, 4)
test_answer('Unit 1 second group is 4 items long', result[1].size, 4)








#input %4 = 2
test_answer('Unit 1 first group is 3 items long', result[0].size, 3)
test_answer('Unit 1 second group is 3 items long', result[1].size, 3)

#input %4 = 3
test_answer('Unit 1 second group is 3 items long', result[0].size, 3)
test_answer('Unit 1 second group is 4 items long', result[1].size, 4)


#input %4 = 0
test_answer('Unit 1 first group is 4 items long', result[0].size, 4)
test_answer('Unit 1 second group is 4 items long', result[1].size, 4)


#input <4
test_answer('Unit 1 first group is 1 items long', result[0].size, 1)
test_answer('Unit 1 first group is 2 items long', result[0].size, 2)
test_answer('Unit 1 first group is 3 items long', result[0].size, 3)


test_answer('Unit 1 first group is 0 items long', result[0].size, 0)
# test_answer('Cohort input is invalid,', {japan: "Tokyo"} , error)



