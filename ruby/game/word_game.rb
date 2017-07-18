class WordGame
  attr_reader :answer_string         # original correct answer
  attr_reader :answer_array
  attr_reader :letter_board_string   # when you have letters but not the whole word
  attr_reader :answer_length_int     # length (number) of characters in answer
  attr_reader :solved
  attr_writer :all_guesses_array     # list of all unique wrong guesses

  def initialize(entry_string)
    @answer_string = entry_string.downcase
    @answer_array = @answer_string.split('')
    @answer_length_int = @answer_array.length
    @all_guesses_array = [] # list of all unique wrong guesses
    @counter = @all_guesses_array.length
    @guess = String.new
    @guess_count_int =  0
    @letter_board_array = []
    @solved = false
    @answer_length_int.times do
      @letter_board_array << " _ "
    end # .times do end
  end # initialize method end


  def check_guess(guess) # "dog"
    @guess_string = guess.downcase # @guess_string = "dog"
    @guess_array = @guess_string.split('')

    loop do
      if @answer_string == @guess_string
        @solved = true
        break
      elsif @all_guesses_array.include?(@guess_string)
        puts "You have already made that guess."
        puts "Please try again"
      else
        @guess_array.each do |letter|
          if @answer_array.include?(letter)
            @letter_board_string = @letter_board_array.join
            puts 'Yes, there is an ' + letter + "in the word."
            puts 'Look:'
            answer_index = @answer_array.index(letter)
            @letter_board_array[answer_index] = letter
            p @letter_board_array
            puts "Please try again"
          elsif
            puts "Sorry, there is no {#letter} in the word."
            puts "Please try again."
            @all_guesses_array << @guess_string
            @guess_string = gets.chomp
          end
        end
      end
    end
  end
end


#**********DRIVER CODE************************************************************************************

puts "Hello there!"
puts "Give me a word for someone to guess:"
entry = gets.chomp.downcase

game = WordGame.new(entry)
p game.letter_board_string
puts
puts "Okay, now walk away from the computer"
puts "and allow someone to guess your word."
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts
puts "What do you think the word is??"
guess = gets.chomp.downcase

game.check_guess(guess)

if game.solved == true
  puts "Great job! You must be a psychic!"
else
  puts "Wow, what a total loser you are! Just kidding. You're only slightly a loser."
end
