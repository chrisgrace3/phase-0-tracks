# Define a method
# Add "yield" to connect with a block
# add block and call the method

def pets
  print "How man pets do you have? "
  number_pets = gets.chomp.to_i
  print "Do you prefer dogs or cats? "
  preference = gets.chomp
  yield(number_pets, preference)
end

pets { |var1, var2| puts "I heard you have #{var1} pets! I assume they are #{var2}?"  }
