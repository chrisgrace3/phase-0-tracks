class WordGame
  attr_reader :solution, :solution_array, :guess_count, :is_over, :incomplete_solution
  attr_accessor :guess_array, :guess


  def initialize(entry) # entry = "pudding"
    @solution = entry # @solution = "pudding"
    @solution_array = entry.split('') # ['p','u','d','d','i','n','g']
    @solution_length = @solution_array.length
    @guess_list = []
    @guess_count = @solution_array.length # 7
    @incomplete_solution = Array.new()
    @incomplete_solution =
    p @incomplete_solution
  end

  def check_guess(guess_string) # "guess"
    incomplete_array = Array.new
    string_array = Array.new
    guess_array = Array.new
    @guess = guess_string
    guess_array = @guess.split('') # guess_array = ['g','u','e','s',s']
    guess_array.each do |char|
      if solution_array.include?(char)
        incomplete_array << char
      else
        incomplete_array << '_'
      end
    end
  end
end

    # guess_array.each do |char|
    #   if !@solution_array.include?(char)
    #     @incomplete_solution << "-"
    #   else
    #     @incomplete_solution << char
    #   end
    #   p @incomplete_solution
    # end
#   end
# end
  # 	@solution_array.include?
  # 	if @guess_count[index] == "ball"
  # 		@is_over = true
  # 	else
  # 		false
  # 	end
  # end


# ***********DRIVER CODE*******************************************************

# puts 'Welcome to the word game!'
# puts 'Please enter a word, any word!'
# # # entry = gets.chomp.to_s
string = "pudding"
game = WordGame.new(string)
game.check_guess(string)



# game.check_guess(string)

# puts "Now walk away and let somebody else guess your word!"
# puts "Please guess the word:"
# guess = gets.chomp
# game.check_guess("hello")



# p game.check_guess(guess.split(' '))

# if guess == entry
#   puts "Great job!"
#   puts "You probably cheated somehow but I won't give you a hard time."
#   puts "Bye!"
# elsif guess != entry
#   guess_array = guess.split
# end
#
# guesses_list = []

# while !game.is_over
#   if guess == entry
#     puts "Wow! You got it! Good job!"
#     break
#   elsif
#     puts "Sorry, that is incorrect."
#     puts "Please try again."
#     guess = gets.chomp
#     if guesses_list.include?(guess)
#       break
#     else
#       guesses_list << guess
#     end
#   end
# end
