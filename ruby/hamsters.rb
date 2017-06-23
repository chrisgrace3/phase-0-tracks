puts "What is your hamster's name?"
hamster_name = gets.chomp
puts "How loud is your hamster, on a scale from 1-10?"
volume_level = gets.chomp.to_i
puts "What is the color of your hamster's fur?"
fur_color = gets.chomp
puts "Would you consider your hamster a good candidate for adoption? True or false."
good_candidate = gets.chomp.downcase
if good_candidate == "true"
	good_candidate = true
elsif good_candidate == "false"
	good_candidate = false
end
puts "How old would you say your hamster is in years?"
est_age = gets.chomp
if est_age == ""
	est_age = nil
else
	est_age = est_age.to_i
end

puts "Your hamster's name is #{hamster_name} and it is #{est_age} years old.\n
      Your hamster has #{fur_color} colored fur. Do you think your hamster is a good candadite?
      Our records indicate that you think #{good_candidate}. Thanks and have a nice day."
