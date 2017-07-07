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
# capitalize for user review only
user_name  = user_name.split.map!{|word| word.capitalize}.join(' ')
print "Is this correct? (y/n) "
p user_name
correct = gets.chomp.downcase

# allow for user to correct any errors
until correct == "y" || correct == "yes"
  print "Please enter your name: "
  user_name = gets.chomp.to_s
  user_name = user_name.split.map!{|word| word.capitalize}.join(' ')
  print "Is this correct? (y/n) "
  p user_name
  correct = gets.chomp.downcase
end

# split name into an array and create new variable
p "User name split: "
user_name_array = user_name.split
p user_name_array
# reverse user_name elements to switch first and last name
user_name_array = user_name_array.reverse
p "First and Last switched:"
p user_name_array
user_first_name = user_name_array[0]
user_last_name = user_name_array[1]
p user_first_name
p user_last_name
# join the reversed first and last and create new variable
user_name = user_name_array.join
p user_name
# user_name characters are now in correct order
# begin character mapping algorithm
=begin map:
-- a -> e
-- e -> i
-- i -> o
-- o -> u
-- u -> y
-- y -> z
=end

# split user_name back into array
user_name_array = user_name.split('')
p user_name_array
=begin
user_name_array.map! do |character|
  if character == 'a'
    character = 'e'
  elsif character == 'e'
    character = 'i'
  elsif character == 'i'
    character = 'o'
  elsif character == 'o'
    character = 'u'
  elsif character == 'u'
    character = 'y'
  elsif character == 'b'
    character = 'c'
  elsif character == 'c'
    character = 'd'
  elsif character == 'd'
    character = 'f'
  elsif character == 'f'
    character = 'g'
  elsif character == 'g'
    character = 'h'
  elsif character == 'h'
    character = 'j'
  elsif character == 'j'
    character = 'k'
  elsif character == 'k'
    character = 'l'
  elsif character == 'l'
    character = 'm'
  elsif character == 'm'
    character = 'n'
  elsif character == 'n'
    character = 'p'
  elsif character == 'p'
    character = 'q'
  elsif character == 'q'
    character = 'r'
  elsif character == 'r'
    character = 's'
  elsif character == 's'
    character = 't'
  elsif character == 't'
    character = 'v'
  elsif character == 'v'
    character = 'w'
  elsif character == 'w'
    character = 'x'
  elsif character == 'x'
    character = 'z'
  else
    character = 'a'
  end
end


p user_name_array
=end
