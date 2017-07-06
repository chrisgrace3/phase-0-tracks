=begin
Write a program that will allow an interior designer to enter details of a
given client.
Prompt user to add:
-- 1. Client's name
-- 2. Age
-- 3. Number (#) of children
-- 4. Decor theme
-- 5. Pets? (true/false)
-- 6. Apartment (true/false)
* Use symbols for keys.
* Print hash back to screen when designer has answered all questions.
* Give user option to update key. "none" to skip.
=end

print "Hello! Please enter client's name: "
client_name = gets.chomp.capitalize

print "Please enter client's age: "
client_age = gets.chomp.to_i

print "Enter number of children in client's household: "
client_children = gets.chomp.to_i

print "Enter theme of decor: "
client_theme = gets.chomp

print "Does the client have any pets? (y/n): "
client_pets = gets.chomp.downcase
if client_pets == "y" || client_pets == "yes"
  client_pets = true
else
  client_pets = false
end

print "Does the client live in an apartment? (y/n): "
apartment = gets.chomp.downcase
if apartment == "y" || apartment == "yes"
  apartment = true
else
  apartment = false
end

# begin hash
application = {
  name: client_name,
  age: client_age,
  children: client_children,
  theme: client_theme,
  pets: client_pets,
  apartment: apartment
}

# verification
puts application
print "Is the above correct? (y/n) "
correct = gets.chomp.downcase
if correct == "y" || correct == "yes"
  correct = true
else
  correct = false
end

if correct == false
  print "Which item needs to be corrected?
  name
  age
  children
  theme
  pets
  apartment
   "
  item_correction = gets.chomp.to_sym
  print "Please enter correct value: "
  # Here is where I am manipulating an array
  application[item_correction] = gets.chomp
  puts "\n\n Thank you! Here is what you entered: \n"
  application.each do |item|
    print item
  end
  p "Have a nice day!"
else
  puts "\n\n Thank you! Here is what you entered: \n"
  application.each do |item|
    p item
  end
  puts "Have a nice day!"
end
