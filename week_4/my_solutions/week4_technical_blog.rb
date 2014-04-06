alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

vowel = ["a","e","i","o","u"]

vowelabet = alphabet.map { |letter| 
	if vowel.include? letter
	letter = "vowel"
	else 
		letter
	end
 }

print alphabet
