# U2.W4: Cipher Challenge


# I worked on this challenge [by myself, with: Eoin McMillan & Dominick Oddo].



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



# def north_korean_cipher(coded_message)
#   input = coded_message.downcase.split("") # .split takes a string and splits it into an array, in this case splitting using the parameter: ""
#   decoded_sentence = []   # creating empty array to put in decoded characters (output of the north_corean_cipher method)
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",   # the pro of a hash is that it is succinct for the programmer, the con is that it uses more computational memory.
#             "h" => "d", 
#             "i" => "e", 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
            
#   input.each do |x| # What is #each doing here? Each is going through each character in input array and doing "something" do it (defined below). 
#     found_match = false  # this is set to false initially so that later if a match is found it can be reassigned to true so that we can use it in a conditional
#     cipher.each_key do |y| # Loop within a loop that allows us to compare all the keys to the current element of the input we are in in the first loop
#       if x == y  # this is comparing the key and pair values for the input (the cipher hash). X is the key value, y is the pair value. Essentially, we have created a loop for decoding to make sure that x & y match up, before pushing the "decoded", which happens next.
#         puts "I am comparing x and y. X is #{x} and Y is #{y}."
#         decoded_sentence << cipher[y] # assigning the value associated with the key to decoded_sentence array
#         found_match = true # Stating that a match was found for use in conditional later
#         break  # Break to make sure we exit the loop. We understand this is good form.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #This is checking for values that are not in our key|pair cipher hash.
#         decoded_sentence << " " # If it is one of these characters then it is decoded to a space
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # to_a means "to array", so if our input is a number, push "x", since we are not deciphering numbers.
#         decoded_sentence << x
#         found_match = true
#         break
#       end 
#     end
#     if not found_match  # If found_match is true then don't perform the code on the next. It is a character that we isn't included in the code above
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("") # Joining array into a sentence for output.
 
#   if decoded_sentence.match(/\d+/) # Looking for consecutive numbers
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # Replace those numbers with themselves divided 100 to decode Kim Jong's exagerations. 
#   end  
#   return decoded_sentence # This is returning the joined string with any gsubs made to large numbers for decoded output       
# end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []   
  alphabet = ('a'..'z').to_a 
  cipher = Hash[alphabet.zip(alphabet.rotate(-4))]
  spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
  input.each do |x| 
    found_match = false  
    cipher.each_key do |y| 
      if x == y  
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y] 
        found_match = true 
        break  
      elsif spaces.include?(x)
        decoded_sentence << " " 
        found_match = true
        break
      elsif (0..9).to_a.include?(x) 
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match 
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("") 
 
  if decoded_sentence.match(/\d+/)
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }  
  end  
  return decoded_sentence 

end

# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection
=begin
Learnings: .split, .rotate, .zip, /\d+\, .gsub!, .match
More experience with meta loops (loops within loops) and hashs.
Kim-Jong-Whatever tends to exaggerate! But we already knew that. 
Eoin: I noticed that Dominic was using technical language to explain what was happening in the code which had the advantage of being technically accurate, but the disadvantage of not relating to the object that was being named. All in all, I knew that he understood the function of the code, not just the story in the exercise.

=end
 