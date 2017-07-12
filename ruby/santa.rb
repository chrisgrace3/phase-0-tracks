# Create Santa class
class Santa

  def initialize(gender)
    puts "Initializing Santa instance..."
    @gender = gender
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
    cookie_type
  end


end


# DRIVER CODE ****************************************************

santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("chocolate chip")
