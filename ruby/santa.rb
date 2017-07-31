class Santa
  attr_reader

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
      "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0

  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end



end



# ***** DRIVER CODE ************************************************************

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African",
  "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas = []
example_genders.length.times do
  santas << Santa.new(example_genders[rand(0..6)], example_ethnicities[rand(0..6)])
end
