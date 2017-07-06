# Define a method
# Add "yield" to connect with a block
# add block and call the method
=begin
def pets
  print "How man pets do you have? "
  number_pets = gets.chomp.to_i
  print "Do you prefer dogs or cats? "
  preference = gets.chomp
  yield(number_pets, preference)
end

pets { |var1, var2| puts "I heard you have #{var1} pets! I assume they are #{var2}?"  }
=end

# declare an array
colors = ["blue","red","green","yellow"]
colors_after_map = []

# declare a hash
actors = {
  "Batman" => "Ben Affleck",
  "Superman" => "Henry Cavill",
  "Wonder Woman" => "Gal Gadot",
  "Lex Luthor" => "Jesse Eisenberg"
}

#use .each with colors
puts "Colors before '.each' call:"
puts colors
puts "Colors after '.each' call (upcase):"
colors.each do |color|
  puts color.upcase
end

#use .map! with colors
puts "Colors before '.map' call:"
puts colors

colors.map! { |color| color.capitalize }
puts "Colors after '.map!' call (capitalize):"
puts colors

puts "Actors/Characters before '.each':"
puts actors

puts "\n\nActors/Characters after '.each':\n\n"
actors.each do |character, actor|
  puts "#{character} was played by #{actor}."
end
