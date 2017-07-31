class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity, age = 0)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen",
      "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    #remove from array
    @reindeer_ranking.delete(reindeer)
    # add to end of array
    @reindeer_ranking.push(reindeer)
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
10.times do
  santas << Santa.new(
  example_genders[rand(0..6)],
  example_ethnicities[rand(0..6)],
  rand(0..140)
  )
end

santas.each do |santa|
  puts "This santa is #{santa.age} years old, is #{santa.ethnicity} and #{santa.gender}."
end



# santas = []
# example_genders.length.times do
#   santas << Santa.new(example_genders[rand(0..6)], example_ethnicities[rand(0..6)])
# end

# santa = Santa.new("agender", "white")
# puts "Santa is #{santa.age} years old and is a #{santa.ethnicity} #{santa.gender} person"
# santa.get_mad_at("Prancer")
# santa.celebrate_birthday
# p santa
# santa.gender = "female"
# puts santa.ethnicity
# puts santa.gender
