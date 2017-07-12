# Create Santa class
class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
    cookie_type
  end

  def celebrate_birthday
    @age = @age + 1
  end

  #  take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings.
    # Insert
  def get_mad_at(name)
    @reindeer_ranking.delete_at(@reindeer_ranking.index(name))
    @reindeer_ranking << name
  end

  def change_gender(new_gender)
    @gender = new_gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

end


# DRIVER CODE ****************************************************

# # create an array called Santas
# santas = []
# # create an array for genders and populate with all genders
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# # create an array for ethnicities and populate with same number of ethnicities as genders
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#
# # create a loop that iterates as many times as there are objects in one of the arrays
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# santas << Santa.new("male", "Italian")
# santas << Santa.new("female", "Native American")
# p santas

santa = Santa.new("female", "Latino")
# p santa.celebrate_birthday
#
# santa.get_mad_at("Dasher")
# p santa
#
# santa.change_gender("male")
# p santa

p santa.age
p santa.ethnicity
