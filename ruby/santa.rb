class Santa
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
    cookie_type
  end

  def initialize
    puts "Initializing Santa instance..."
  end



end


# DRIVER CODE ****************************************************

st_nick = Santa.new
st_nick.speak
