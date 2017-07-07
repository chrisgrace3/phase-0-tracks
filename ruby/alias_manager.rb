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
all_users = []

print "Please enter your first and last name: "
original_user_name = gets.chomp.to_s
until original_user_name.include? " "
  print "You have only entered one name. \nPlease enter your first AND last name: "
  original_user_name = gets.chomp.to_s
end
original_user_name_capitalize  = original_user_name.split.map!{|word| word.capitalize}.join(' ')


# split name into an array and create new variable
user_name_array = original_user_name.split
user_first_name = user_name_array[0]
user_last_name = user_name_array[1]
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
user_first_name_array = user_first_name.downcase.split('')
user_last_name_array = user_last_name.downcase.split('')

def encrypt(name)
name.map! do |character|
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
end

encrypt(user_first_name_array)
encrypt(user_last_name_array)

user_first_name = user_first_name_array.join('').capitalize
user_last_name = user_last_name_array.join('').capitalize
user_name = user_last_name + " " + user_first_name
all_users << "The code name for #{original_user_name_capitalize} is '#{user_name}'."



def split(name_as_string)
  name_as_array = name_as_string.split(' ')
end

additional_names = ''
until additional_names == 'yes' || additional_names == 'y' || additional_names == 'quit' ||additional_names == 'n'
print "Would you like to enter any additional names? (type 'y' if yes. Otherwise enter 'quit' to continue.) "
additional_names = gets.chomp.downcase
end
until additional_names == "quit" || additional_names == 'n'
  print "Enter name: "
  new_user_original_name = gets.chomp.downcase
  until new_user_original_name.include? " "
    print "You have only entered one name. \nPlease enter a first AND last name: "
    new_user_original_name = gets.chomp.to_s
  end
  new_user_original_name_capitalized = new_user_original_name.split.map!{|word| word.capitalize}.join(' ')
  split_new_user_name = split(new_user_original_name)
  new_user_first_name = split_new_user_name[0]
  new_user_first_name_array = new_user_first_name.split('')
  new_user_last_name = split_new_user_name [1]
  new_user_last_name_array = new_user_last_name.split('')
  code_first = encrypt(new_user_first_name_array).join('').capitalize
  code_last = encrypt(new_user_last_name_array).join('').capitalize
  new_code_name = code_last + ' ' + code_first
  all_users << "The code name for #{new_user_original_name_capitalized} is '#{new_code_name}'."
  puts "Would you like to enter any additional names? (type 'y' if yes, otherwise enter 'quit' to continue.) "
  additional_names = gets.chomp.downcase
  until additional_names == 'yes' || additional_names == 'y' || additional_names == 'quit' ||additional_names == 'n'
  print "Would you like to enter any additional names? (type 'y' if yes. Otherwise enter 'quit' to continue.) "
  additional_names = gets.chomp.downcase
  end
end
puts "\n\nThank you. Here are your codenames: "
puts all_users
