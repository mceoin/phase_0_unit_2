# #Driver code pseudocode:
# 1. Write three generic copy templates (start with 1, then move on)
# 2. Mark up those templates so various arguments can manipulate the templates
# 3. have fun


#title section
def title(title_phrase, author)
	require 'date'
	date = Date.today.to_s	

"Title: #{title_phrase}
Submitted by: #{author} 
Date: #{date}
\n\ "
end

#fake essay section
def fake_essay(surname, first_name, pronoun, possessive_pronoun)

"#{surname} was born into a family of bankers and goldsmiths from Fife; #{possessive_pronoun} father had purchased Lauriston Castle, a landed estate at Cramond on the Firth of Forth and was known as #{surname} of Lauriston. #{surname} joined the family business at age fourteen and studied the banking business until his father died in 1688. #{surname} subsequently neglected the firm in favour of more extravagant pursuits and travelled to London, where #{pronoun} lost large sums of money in gambling.
 
 On 9 April 1694, #{first_name} #{surname} fought a duel with Edward Wilson in Bloomsbury Square in London. Wilson had challenged #{surname} over the affections of Elizabeth Villiers. #{surname} killed Wilson with a single pass and thrust of his sword. He was arrested, charged with murder and stood trial at the Old Bailey.#{pronoun.capitalize} appeared before the infamously sadistic 'hanging-judge', Salathiel Lovell and was found guilty of murder, and sentenced to death. #{pronoun.capitalize} was initially incarcerated in Newgate Prison to await execution. #{possessive_pronoun.capitalize} sentence was later commuted to a fine, upon the ground that the offence only amounted to manslaughter. Wilson's brother appealed and had #{surname} imprisoned, but #{pronoun} managed to escape to Amsterdam. 
 
 #{surname} urged the establishment of a national bank to create and increase instruments of credit and the issue of banknotes backed by land, gold, or silver. The first manifestation of #{surname}'s system came when he had returned to Scotland and contributed to the debates leading to the Treaty of Union 1707. #{pronoun.capitalize} published a text entitled Money and Trade Consider'd with a Proposal for Supplying the Nation with Money (1705). #{surname}'s propositions of creating a national bank in Scotland were ultimately rejected, and he left to pursue his ambitions abroad."
end 

generic_title = title("Essay Title Goes Here", "Author Name goes here")

template_thesis = fake_essay("subject_surname", "subject_first_name", "gender_specific_pronoun", "gender_specific_possessive_pronoun")

generic_essay_template = generic_title + template_thesis

print generic_essay_template

#test method
def test_answer(testing_explanation, assertion, result)

	if assertion == result
		puts "PASS: #{assertion} equals #{result}"
	else
		puts "FAIL: #{assertion} doesnt equal #{result}"
	end
end

original_text = 
"Law was born into a family of bankers and goldsmiths from Fife; his father had purchased Lauriston Castle, a landed estate at Cramond on the Firth of Forth and was known as Law of Lauriston. Law joined the family business at age fourteen and studied the banking business until his father died in 1688. Law subsequently neglected the firm in favour of more extravagant pursuits and travelled to London, where he lost large sums of money in gambling.

On 9 April 1694, John Law fought a duel with Edward Wilson in Bloomsbury Square in London. Wilson had challenged Law over the affections of Elizabeth Villiers. Law killed Wilson with a single pass and thrust of his sword. He was arrested, charged with murder and stood trial at the Old Bailey. He appeared before the infamously sadistic 'hanging-judge', Salathiel Lovell and was found guilty of murder, and sentenced to death. He was initially incarcerated in Newgate Prison to await execution. His sentence was later commuted to a fine, upon the ground that the offence only amounted to manslaughter. Wilson's brother appealed and had Law imprisoned, but he managed to escape to Amsterdam.

Law urged the establishment of a national bank to create and increase instruments of credit and the issue of banknotes backed by land, gold, or silver. The first manifestation of Law's system came when he had returned to Scotland and contributed to the debates leading to the Treaty of Union 1707. He published a text entitled Money and Trade Consider'd with a Proposal for Supplying the Nation with Money (1705). Law's propositions of creating a national bank in Scotland were ultimately rejected, and he left to pursue his ambitions abroad."


# expected_title=
# "Title: 17th Century Mercantilism in Europe
# Submitted by: Eoin McMillan
# Date: 2014-04-05"

# # #testing copy
# # test_answer('text should be exactly the same', fake_essay("Law", "John", "he", "his"), original_text)

# #testing title
# test_answer(
# 	'name/date/title should be exactly the same', 
# 	title("17th Century Mercantilism in Europe", "Eoin McMillan"),expected_title
# 	)


#reflection: once a variable is inside a method, it can be referred to using #{}
#My testing is pretty useless. If I have a single space-bar out of place, it won't accept my result, so if I make the slightest error when marking up my thesis copy then my tests will return an error. (it's... well it's always possible there's something else going on that I'm not aware of)
#somewhere between testing and checking to see how my #{} enumerables would work, I ended up just writing the answer and skipping the pseudocode, -- so very bad process from me on this one : )
#I learned how to call today's date : ) (I think I was supposed to input a date, but who knows what day it is when you're submitting your homework late?)