# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)
# 2)

 # This is the file you should end up editing. 
 
  #establish favorite food
  #check if bakery makes faveorite food, otherwise throw error
  #track number times favorite food servinf matches num peaople
  #see if num of people matches serving size, otherwise, track remainder
  #Divide people to serve by serving size, round down, that's number of fave food
  #Modulo remainder = num secondary food
  #return num of fave food and number of cookies if any
  #return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."

def bakery_num(people, favourite)
  
  pie_qty = cake_qty = cookie_qty = 0
  
  serving_size = {"pie" => 8, "cake" => 6, "cookie" => 1} #serving sizes

  if serving_size.has_key?(favourite) == false
       raise ArgumentError.new("We don't have that food at this bakery, we only make pie, cake and cookie's")
  end
  
  primary_recipe_count = (people/serving_size[favourite]).floor  
  cookie_qty = people % serving_size[favourite].floor  
  
  if favourite == "pie"
    pie_qty = primary_recipe_count
  elsif favourite == "cake"
    cake_qty = primary_recipe_count
  else
    cookie_qty = people
  end
   
  if cookie_qty == people && primary_recipe_count == 0
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
  elsif cookie_qty == people
    return "You need to make #{cookie_qty} cookie(s)."
  elsif cookie_qty == 0
    return "You need to make #{primary_recipe_count} #{favourite}(s)."
  else
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
  end
end    



  # pie_qty = cake_qty = cookie_qty = 0
  
  # has_fave = false # favorite dessert

  # desserts.each_key do |dessert| #loop
  # # finds favorite food
  #   if dessert == fav_dessert
  #     has_fave = true
  #     fav_dessert = dessert
  #   end
  # end

  # #notify that you can't make food if you have no favorite
  # if has_fave == false
  #   raise ArgumentError.new("You can't make that food")
  # else
  #   # if you do have a favorite food
  #   fav_dessert_qty = desserts.values_at(fav_dessert)[0]
  
  # # num people devided by food quanity is even
  #   if num_of_people % fav_food_qty == 0
  #     num_of_food = num_of_people / fav_dessert_qty
  #     return "You need to make #{num_of_food} #{fav_dessert}(s)."
  #   else 
  #     while num_of_people > 0
  #       if num_of_people / desserts["pie"] > 0
  #         pie_qty = num_of_people / desserts["pie"]
  #         num_of_people = num_of_people % desserts["pie"]
  #       elsif num_of_people / desserts["cake"] > 0
  #         cake_qty = num_of_people / desserts["cake"]
  #         num_of_people = num_of_people % desserts["cake"]
  #       else
  #         cookie_qty = num_of_people
  #         num_of_people = 0
  #       end
  #     end
  #   return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
  #   end
  # end
# end
 

#-----------------------------------------------------------------------------------------------------
p bakery_num(24, "cake")
p bakery_num(41, "pie")
p bakery_num(24, "cookie")
p bakery_num(4, "pie")
p bakery_num(130, "pie")

#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
 