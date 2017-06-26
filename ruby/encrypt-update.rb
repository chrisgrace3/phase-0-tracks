# Encryption algorithm
# Write a while loop that moves through a string one character at a time
#   -- If the character is space, leave it as a space
#   -- If the character is a “z”, return it as an “a” (not “aa”)
#   -- Otherwise return the character one forward in alphabetical order (.next)

def encrypt(str)
  index = 0
  # declare an empty string we will add to
  result = ""
  # loop over the string's letters, accounting for spaces and edge cases, and return the next letter in alphabetic order.
  while index < str.length
    if str[index] == " "
      result += " "
    elsif str[index] == "z"
      result += "a"
    else
      result += str[index].next
    end
  index += 1
  end
  return result

end

# encrypt("z e d")

# Decryption Algorithm
# Write a while loop that moves through a string one character a time
# If the character is a space, leave it as a space
# Otherwise use index to locate that character in a string composed of the alphabet and return the character one previous in the alphabet.

def decrypt(str)
  index = 0
  #Declare an empty string and the alphabet as a string
  result = ""
  alpha = "abcdefghijklmnopqrstuvwxyz"
  #loop over the string's characters one at a time, accounting for spaces, identify the character's location in the alphabet string, and returning previous character in the alpha string
  while index < str.length
    if str[index] == " "
      result += " "
    else
    result += alpha[alpha.index(str[index])-1]
    end
  index +=1
  end
  return result
end

# decrypt("a f e")

# decrypt(encrypt("swordfish"))
# Why does this nested method call work?
# The call works because the encrypt method call evaluates (because of the explicit return) to  a new string of characters advanced one in the alphabet. The decrypt method takes that new string as an argument and moves the characters back one in alphabet, returning another string which matches the initial argument fed into the encrypt method (in this case "swordfish").


# DRIVER CODE

# define prompt variable for input
prompt = "> "

# ask the user to choose between encryption and decryption
puts "Please choose [E]ncryption or [D]ecryption:"
print prompt

# if the user has not entered a valid answer, request a valid answer until one is provided
while user_input = gets.chomp
  case user_input
  when "E", "e", "D", "d"
    break
  else
    puts "Please enter E for encryption or D for decryption:"
    print prompt
  end
end

# ask user to enter password
puts "Enter password:"
print prompt
password = gets.chomp

# if user has selected encryption, call encryption method and print result
if user_input == "e"|| user_input == "E"
  puts encrypt(password)
# if user has selected decryption, call decryption method and print result
elsif user_input == "d" || user_input == "D"
  puts decrypt(password)
end
