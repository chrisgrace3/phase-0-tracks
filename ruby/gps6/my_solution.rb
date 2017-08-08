# Virus Predictor

# I worked on this challenge [with: John Lee].
# We spent [1] hour on this challenge.

# EXPLANATION OF require_relative:

# Require_relative pulls code from the file that is mentioned
# Require takes absolute path to find modules, and require_relative takes a relative path.

require_relative 'state_data'

class VirusPredictor
  # Creating new instance by passing in 3 attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Calls predicted_deaths and speed_of_spread instance methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # Prints out a statement that takes a given state's population_density and population, and calculates the number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # Prints a 2nd half of a statement, that takes in the state's population_density and state name, and calculates the speed (months).
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state_name, population|
  state = VirusPredictor.new(state_name, population[:population_density], population[:population])
  state.virus_effects
end



#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# -A string was used as the key and other one was a symbol.
# What does require_relative do? How is it different from require?
# -Require_relative pulls code from the file that is mentioned. Require takes absolute path to find modules, and require_relative takes a relative path.
# What are some ways to iterate through a hash?
# -By using the .each, .each_key, .each_value, or .each_pair methods.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# -When refactoring virus_effects, having the parameters for the instane methods (that were being called) were not necessary.
# What concept did you most solidify in this challenge?
# -The concept of require_relative and require
