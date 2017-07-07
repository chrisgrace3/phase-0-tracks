=begin
Take a name (e.g. "Felicia Torres") and create a fake name:
--Prompt for user input (ask for name)
--Create new array variable which isolates first and last name
--Switch first and last names
--Join first and last together and reassign username to string
--Create new array isolating the letters
--Change consonants to the next consonant.
--Print alias to user
=end

print "Please enter your first and last name: "
user_name = gets.chomp.to_s
user_name_capitalized = user_name.split.map!{|word| word.capitalize}.join(' ')
print "Is this correct? (y/n) "
p user_name_capitalized
correct = gets.chomp.downcase

until correct == "y" || correct == "yes"
  print "Please enter your name: "
  user_name = gets.chomp.to_s
  user_name_capitalized = user_name.split.map!{|word| word.capitalize}.join(' ')
  print "Is this correct? (y/n) "
  p user_name_capitalized
  correct = gets.chomp.downcase
end

p "User name split: "
user_name_array = user_name.split
p user_name_array
user_name_array = user_name_array.reverse
p "First and Last switched:"
p user_name_array

user_name = user_name_array.join
p user_name
