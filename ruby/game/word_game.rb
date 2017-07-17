class WordGame
  attr_reader :solution_array, :solution, :guess_count
  attr_reader :incomplete_solution_string
  attr_reader :submitted_guesses
  attr_writer :wrong_guesses

  def initialize(entry_string)
    @solution = entry_string.downcase
    @solution_array = @solution.split('')
    @solution_length = @solution_array.length
    @total_guesses = []
  end

  def guess_array(string)
    string.split('')
  end

  def guesses
    @guess_count = (@solution_length.to_i - @wrong_guesses.to_i)
    @guess_count
  end

  def check_guess(guess_string)
    guess_string = guess_string.downcase
    if @solution == guess_string
      puts "Wow you are a genius! Go have yourself a cookie."
    end

    while @solution != guess_string.downcase
    @total_guesses << guess_string
    puts "Nope, please try again."
    guess_string = gets.chomp.downcase
      if !@total_guesses.include?(guess_string.downcase)

      end
    puts "Nope. Try again ya big dummy."

    end
  end


    if @solution != guess_string.downcase

    elsif @solution

      break
    '
    @solution != guess_string.downcase


    @total_guesses << guess_string
    end
  end

  def check_guess(guess_string) # def check_guess("pie")

    @submitted_guess_array = []
    @submitted_guess_array = guess_string.split('')
    @submitted_guesses << guess_string
      @submitted_guess_array.each do |letter|
        if @solution_array.include?(letter)
          @incomplete_solution_array[@solution_array.index(letter)] = letter
        end
      end
    end

    # @solution_length.times do
    #   @incomplete_solution_array << " - " # = ["_", "_", etc.]           # @incomplete_solution_array = ["_", "_", "_", "_", "_", "_", "_",]
    # end

  #   @incomplete_solution_array = []
  #   @incomplete_solution_string = @incomplete_solution_array.join('')      # @incomplete_solution_string = "_ _ _ _ _ _ _"
  #   @submitted_guesses = []
  #   @counts = @submitted_guesses.length
  # end


end
  #
  #     if @solution_array.include?
  #   end
  #   guess_array.each do |char|
  #     if solution_array.include?(char) # if [p u d d i n g] includes p
  #       @incomplete_solution_array.map!
  #     else
  #       incomplete_array << '_'
  #     end
  #   end
  # end
# end

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

puts 'Welcome to the word game!'
puts 'Please enter a word, any word!'
entry = gets.chomp.to_s

game = WordGame.new("pudding")
game.check_guess("pie")
p game.submitted_guesses




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
