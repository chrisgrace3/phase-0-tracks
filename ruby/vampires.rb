puts "How many employees will be processed today?"
employees_today = gets.chomp.to_i

while employees_today > 0
puts "What's your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "Great, so what year were you born?"
birth_year = gets.chomp.to_i
puts "Our cafeteria serves garlic bread. Would you like some? (y/n)"
garlic_bread_b = gets.chomp.downcase
puts "Would you like to enroll in our health insurance program? (y/n)"
h_insurance = gets.chomp.downcase

if name == "Tu Fang" || name == "Drake Cula"
  puts "Definitely a vampire"
elsif (age == (2017 - birth_year)) && (garlic_bread_b == "y" || h_insurance == "y")
  puts "Probably not a vampire."
elsif (age != (2017 - birth_year)) && (garlic_bread_b != "y" || h_insurance != "y")
  puts "Probably a vampire."
elsif age != (2017 - birth_year) && garlic_bread_b != "y" && h_insurance != "y"
  puts "Amost certainly a vampire."
else
  puts "Results inconclusive."
end
employees_today = employees_today - 1
end
