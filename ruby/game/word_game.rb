class WordGame
  attr_reader :solution, :solution_array, :guesses

  def initialize(entry)
    @solution = entry
    @solution_array =  entry.split('')
    @guesses = @solution_array.length
  end




end

# ***********DRIVER CODE*******************************************************

# puts 'Welcome to the word game!'
# puts 'Please enter a word. Any word!'

game = WordGame.new("Hello")

p game.solution
