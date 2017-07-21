# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.


require_relative 'state_data'
require 'pry'

class VirusPredictor
  #when an instance of the VirusPredictor class is initialized
  # these instance variable are set by the initializion arguments
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  # ("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
  # does a whole bunch

  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  # how many people will die from that state due to outbreak
  def predicted_deaths(population_density, population, state)
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


  # calculates speed of spread based on pop density in the state
  def speed_of_spread(population_density, state) #in months
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


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

#New method belongs outside of the class because it's not a class method. It's a block.
STATE_DATA.each do |state, value|
  new_state = VirusPredictor.new(state, value[:population_density], value[:population])
  new_state.virus_effects
end




#=======================================================================
# Reflection Section

# Write a comment explaining the require_relative statement. What does it do?
# How does it work? How does it differ from require?

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # The state data hash uses hash rockets for each key/value pair.
  # The hashes inside the state data keys uses symbols for keys.

# What does require_relative do? How is it different from require?
  # require_relative: You can enter a path to the reference file starting from the current directory
  # require: The path to the reference file begins at the root directory

# What are some ways to iterate through a hash?
  # The .each method is the best I've found
  # you could also use hash.length.times do

# When refactoring virus_effects, what stood out to you
  # I had trouble with that part, and I'm running out of time and have
  # too much other work that is due in two days so I have to move on
