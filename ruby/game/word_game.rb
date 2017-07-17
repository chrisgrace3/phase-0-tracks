class WordGame
  attr_reader :solution, :solution_array, :guess_count, :is_over


  def initialize(entry)
    @solution = entry
    @solution_array =  entry.split('')
    @guess_count = @solution.length
    @is_over = false
  end

  def check_guess(index)
  	@guess_count += 1
  	if @guess_count[index] == "ball"
  		@is_over = true
  	else
  		false
  	end
  end




end

# ***********DRIVER CODE*******************************************************

puts 'Welcome to the word game!'
puts 'Please enter a word, any word!'
entry = gets.chomp
game = WordGame.new(entry)

puts "Now walk away and let somebody else guess your word!"
puts "Please guess the word:"
guess = gets.chomp
count = 0

guesses_list = []

while !game.is_over
  if guess == entry
    puts "Wow! You got it! Good job!"
    break
  elsif
    puts "Sorry, that is incorrect."
    puts "Please try again."
    guess = gets.chomp
    if guesses_list.include?(guess)
      break
    else
      guesses_list << guess
    end
  end
end
