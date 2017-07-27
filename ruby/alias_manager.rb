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
vowels = ['a','e','i','o','u']
consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','r','v','w','x','y','z']

print "Enter your first and last name: "
full_name = gets.chomp
while full_name.split(' ').length != 2
  puts
  puts "Incorrect entry."
  puts "Please enter two words. First name and last name only:"
  full_name = gets.chomp
end

first_name = full_name.split(' ')[0]
last_name = full_name.split(' ')[1]

p first_name_array = first_name.chars
p last_name_array = last_name.chars

def encryptor(name_array)
  encrypted_name = ""
  name_array.each do |char|
    if vowels.include?(char) || char != 'u'
      encrypted_name.push(vowels)

    else


    end
  end
end


# Driver code
