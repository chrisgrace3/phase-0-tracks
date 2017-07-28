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


vowels = ['a','e','i','o','u','a']
consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','r','v','w','x','y','z','b']
codenames_list = {}

loop do
  puts
  puts "Enter your first and last name to receive your codename: "
  puts "(type 'quit' when you are done)"

  full_name = gets.chomp
  break if full_name == 'quit'
  while full_name.split(' ').length != 2
    puts
    puts "Incorrect entry."
    puts "Please enter two words. First name and last name only:"
    full_name = gets.chomp
  end

  first_name = full_name.split(' ')[0]
  last_name = full_name.split(' ')[1]

  first_name_array = first_name.chars
  last_name_array = last_name.chars

  def next_vowel(char)
    vowels = ['a','e','i','o','u','a']
    original_index =  vowels.index(char)
    next_vowel = vowels[original_index + 1]
  end

  def next_consonant(char)
    consonants_array = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z','b']
    original_index =  consonants_array.index(char)
    next_consonant = consonants_array[original_index + 1]
  end

  new_first_name = ""
  new_last_name = ""
  first_name_array.each do |char|
    if vowels.include?(char)
      new_first_name << next_vowel(char)
    else
      new_first_name << next_consonant(char)
    end
  end

  last_name_array.each do |char|
    if vowels.include?(char)
      new_last_name << next_vowel(char)
    else
      new_last_name << next_consonant(char)
    end
  end
  codename = new_last_name.capitalize + ' ' + new_first_name.capitalize
  codenames_list["#{first_name.capitalize} #{last_name.capitalize}"] = codename
  puts
  puts "Your code name is \"#{codename}\""
end
puts
puts
codenames_list.each do |name, codename|
  puts "The codename generated for #{name} is \"#{codename}\"."
end
